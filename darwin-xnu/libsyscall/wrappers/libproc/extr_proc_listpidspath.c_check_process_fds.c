
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vi ;
struct TYPE_7__ {int vi_stat; } ;
struct TYPE_6__ {int fi_openflags; } ;
struct vnode_fdinfo {TYPE_2__ pvi; TYPE_1__ pfi; } ;
struct proc_fdinfo {int proc_fdtype; int proc_fd; } ;
typedef TYPE_3__* fdOpenInfoRef ;
struct TYPE_8__ {int fds_size; int fds_count; int flags; struct proc_fdinfo* fds; } ;


 int ENOENT ;
 int O_EVTONLY ;
 int PROC_LISTPIDSPATH_EXCLUDE_EVTONLY ;
 int PROC_PIDFDVNODEINFO ;
 int PROC_PIDLISTFDS ;

 int check_file (TYPE_3__*,int *) ;
 int errno ;
 struct proc_fdinfo* malloc (int) ;
 int proc_pidfdinfo (int,int ,int ,struct vnode_fdinfo*,int) ;
 int proc_pidinfo (int,int ,int ,struct proc_fdinfo*,int) ;
 struct proc_fdinfo* reallocf (struct proc_fdinfo*,int) ;

__attribute__((used)) static int
check_process_fds(fdOpenInfoRef info, int pid)
{
 int buf_used;
 int i;
 int status;


 buf_used = proc_pidinfo(pid, PROC_PIDLISTFDS, 0, ((void*)0), 0);
 if (buf_used <= 0) {
  return -1;
 }

 while (1) {
  if (buf_used > info->fds_size) {

   while (buf_used > info->fds_size) {
    info->fds_size += (sizeof(struct proc_fdinfo) * 32);
   }

   if (info->fds == ((void*)0)) {
    info->fds = malloc(info->fds_size);
   } else {
    info->fds = reallocf(info->fds, info->fds_size);
   }
   if (info->fds == ((void*)0)) {
    return -1;
   }
  }

  buf_used = proc_pidinfo(pid, PROC_PIDLISTFDS, 0, info->fds, (int)info->fds_size);
  if (buf_used <= 0) {
   return -1;
  }

  if ((buf_used + sizeof(struct proc_fdinfo)) >= info->fds_size) {

   buf_used = (int)(info->fds_size + sizeof(struct proc_fdinfo));
   continue;
  }

  info->fds_count = (int)(buf_used / sizeof(struct proc_fdinfo));
  break;
 }


 for (i = 0; i < info->fds_count; i++) {
  struct proc_fdinfo *fdp;

  fdp = &info->fds[i];
  switch (fdp->proc_fdtype) {
   case 128 : {
    int buf_used;
    struct vnode_fdinfo vi;

    buf_used = proc_pidfdinfo(pid, fdp->proc_fd, PROC_PIDFDVNODEINFO, &vi, sizeof(vi));
    if (buf_used <= 0) {
     if (errno == ENOENT) {






      continue;
     }
     return -1;
    } else if (buf_used < sizeof(vi)) {

     return -1;
    }

    if ((info->flags & PROC_LISTPIDSPATH_EXCLUDE_EVTONLY) &&
        (vi.pfi.fi_openflags & O_EVTONLY)) {

     continue;
    }

    status = check_file(info, &vi.pvi.vi_stat);
    if (status != 0) {

     return status;
    }
    break;
   }
   default :
    break;
  }
 }

 return 0;
}
