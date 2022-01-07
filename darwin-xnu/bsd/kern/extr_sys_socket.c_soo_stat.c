
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat64 {int st_mode; scalar_t__ st_size; void* st_gid; void* st_uid; } ;
struct stat {int st_mode; scalar_t__ st_size; void* st_gid; void* st_uid; } ;
struct TYPE_4__ {scalar_t__ sb_cc; scalar_t__ sb_ctl; } ;
struct socket {int so_state; TYPE_3__* so_proto; int so_cred; TYPE_1__ so_rcv; } ;
typedef int caddr_t ;
struct TYPE_6__ {TYPE_2__* pr_usrreqs; } ;
struct TYPE_5__ {int (* pru_sense ) (struct socket*,void*,int) ;} ;


 int SS_CANTRCVMORE ;
 int SS_CANTSENDMORE ;
 void* S_IFSOCK ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int bzero (int ,int) ;
 int kauth_cred_get () ;
 void* kauth_cred_getgid (int ) ;
 void* kauth_cred_getuid (int ) ;
 int mac_socket_check_stat (int ,struct socket*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int stub1 (struct socket*,void*,int) ;

int
soo_stat(struct socket *so, void *ub, int isstat64)
{
 int ret;

 struct stat *sb = (struct stat *)0;

 struct stat64 *sb64 = (struct stat64 *)0;







 if (isstat64 != 0) {
  sb64 = (struct stat64 *)ub;
  bzero((caddr_t)sb64, sizeof (*sb64));
 } else {
  sb = (struct stat *)ub;
  bzero((caddr_t)sb, sizeof (*sb));
 }

 socket_lock(so, 1);
 if (isstat64 != 0) {
  sb64->st_mode = S_IFSOCK;
  if ((so->so_state & SS_CANTRCVMORE) == 0 ||
      so->so_rcv.sb_cc != 0)
   sb64->st_mode |= S_IRUSR | S_IRGRP | S_IROTH;
  if ((so->so_state & SS_CANTSENDMORE) == 0)
   sb64->st_mode |= S_IWUSR | S_IWGRP | S_IWOTH;
  sb64->st_size = so->so_rcv.sb_cc - so->so_rcv.sb_ctl;
  sb64->st_uid = kauth_cred_getuid(so->so_cred);
  sb64->st_gid = kauth_cred_getgid(so->so_cred);
 } else {
  sb->st_mode = S_IFSOCK;
  if ((so->so_state & SS_CANTRCVMORE) == 0 ||
      so->so_rcv.sb_cc != 0)
   sb->st_mode |= S_IRUSR | S_IRGRP | S_IROTH;
  if ((so->so_state & SS_CANTSENDMORE) == 0)
   sb->st_mode |= S_IWUSR | S_IWGRP | S_IWOTH;
  sb->st_size = so->so_rcv.sb_cc - so->so_rcv.sb_ctl;
  sb->st_uid = kauth_cred_getuid(so->so_cred);
  sb->st_gid = kauth_cred_getgid(so->so_cred);
 }

 ret = (*so->so_proto->pr_usrreqs->pru_sense)(so, ub, isstat64);
 socket_unlock(so, 1);
 return (ret);
}
