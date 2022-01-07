
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vfs_context_t ;
struct socket {int dummy; } ;
struct knote {int kn_filter; int kn_data; void* kn_flags; int kn_filtid; TYPE_2__* kn_fp; } ;
struct kevent_internal_s {int dummy; } ;
struct fileproc {int dummy; } ;
struct TYPE_6__ {int (* f_attach ) (struct knote*,struct kevent_internal_s*) ;} ;
struct TYPE_5__ {TYPE_1__* f_fglob; } ;
struct TYPE_4__ {scalar_t__ fg_data; } ;


 int EINVAL ;
 int EPERM ;
 int EVFILTID_SCK ;
 int EVFILTID_SOEXCEPT ;
 int EVFILTID_SOREAD ;
 int EVFILTID_SOWRITE ;




 void* EV_ERROR ;
 int PROC_NULL ;
 TYPE_3__* knote_fops (struct knote*) ;
 scalar_t__ mac_socket_check_kqfilter (int ,struct knote*,struct socket*) ;
 int proc_ucred (int ) ;
 int so_update_last_owner_locked (struct socket*,int ) ;
 int so_update_policy (struct socket*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int stub1 (struct knote*,struct kevent_internal_s*) ;
 int vfs_context_proc (int ) ;

int
soo_kqfilter(struct fileproc *fp, struct knote *kn,
  struct kevent_internal_s *kev, vfs_context_t ctx)
{
#pragma unused(fp)

#pragma unused(ctx)

 struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
 int result;

 socket_lock(so, 1);
 so_update_last_owner_locked(so, PROC_NULL);
 so_update_policy(so);
 switch (kn->kn_filter) {
 case 130:
  kn->kn_filtid = EVFILTID_SOREAD;
  break;
 case 128:
  kn->kn_filtid = EVFILTID_SOWRITE;
  break;
 case 129:
  kn->kn_filtid = EVFILTID_SCK;
  break;
 case 131:
  kn->kn_filtid = EVFILTID_SOEXCEPT;
  break;
 default:
  socket_unlock(so, 1);
  kn->kn_flags = EV_ERROR;
  kn->kn_data = EINVAL;
  return 0;
 }





 result = knote_fops(kn)->f_attach(kn, kev);

 socket_unlock(so, 1);

 return result;
}
