
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
struct vinfo_stat {int vst_mode; int vst_blksize; int vst_size; int vst_blocks; int vst_nlink; int vst_ctimensec; int vst_ctime; int vst_mtimensec; int vst_mtime; int vst_atimensec; int vst_atime; int vst_gid; int vst_uid; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct pipe_info {int pipe_status; void* pipe_peerhandle; void* pipe_handle; struct vinfo_stat pipe_stat; } ;
struct TYPE_2__ {scalar_t__ buffer; int cnt; } ;
struct pipe {int pipe_state; struct pipe* pipe_peer; TYPE_1__ pipe_buffer; } ;


 int EBADF ;
 int MAX_PIPESIZE (struct pipe*) ;
 int PIPE_LOCK (struct pipe*) ;
 int PIPE_SIZE ;
 int PIPE_UNLOCK (struct pipe*) ;
 int S_IFIFO ;
 int S_IRGRP ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWUSR ;
 scalar_t__ VM_KERNEL_ADDRPERM (uintptr_t) ;
 int bzero (struct vinfo_stat*,int) ;
 int kauth_cred_get () ;
 int kauth_getgid () ;
 int kauth_getuid () ;
 int mac_pipe_check_stat (int ,struct pipe*) ;
 int nanotime (struct timespec*) ;

int
fill_pipeinfo(struct pipe * cpipe, struct pipe_info * pinfo)
{



 struct timespec now;
 struct vinfo_stat * ub;
 int pipe_size = 0;
 int pipe_count;

 if (cpipe == ((void*)0))
         return (EBADF);
 PIPE_LOCK(cpipe);
 if (cpipe->pipe_buffer.buffer == 0) {



         if (cpipe->pipe_peer) {



          pipe_size = MAX_PIPESIZE(cpipe->pipe_peer);
   pipe_count = cpipe->pipe_peer->pipe_buffer.cnt;
  } else {
   pipe_count = 0;
  }
 } else {
         pipe_size = MAX_PIPESIZE(cpipe);
  pipe_count = cpipe->pipe_buffer.cnt;
 }




 if (pipe_size == 0)
  pipe_size = PIPE_SIZE;

 ub = &pinfo->pipe_stat;

 bzero(ub, sizeof(*ub));
 ub->vst_mode = S_IFIFO | S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP;
 ub->vst_blksize = pipe_size;
 ub->vst_size = pipe_count;
 if (ub->vst_blksize != 0)
  ub->vst_blocks = (ub->vst_size + ub->vst_blksize - 1) / ub->vst_blksize;
 ub->vst_nlink = 1;

 ub->vst_uid = kauth_getuid();
 ub->vst_gid = kauth_getgid();

 nanotime(&now);
 ub->vst_atime = now.tv_sec;
 ub->vst_atimensec = now.tv_nsec;

 ub->vst_mtime = now.tv_sec;
 ub->vst_mtimensec = now.tv_nsec;

 ub->vst_ctime = now.tv_sec;
 ub->vst_ctimensec = now.tv_nsec;






 pinfo->pipe_handle = (uint64_t)VM_KERNEL_ADDRPERM((uintptr_t)cpipe);
 pinfo->pipe_peerhandle = (uint64_t)VM_KERNEL_ADDRPERM((uintptr_t)(cpipe->pipe_peer));
 pinfo->pipe_status = cpipe->pipe_state;

 PIPE_UNLOCK(cpipe);

 return (0);
}
