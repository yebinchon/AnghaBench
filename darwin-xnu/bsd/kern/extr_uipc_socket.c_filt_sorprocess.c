
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct kevent_internal_s {int dummy; } ;
struct knote {int kn_flags; scalar_t__ kn_data; scalar_t__ kn_fflags; struct kevent_internal_s kn_kevent; TYPE_2__* kn_fp; } ;
struct filt_process_s {int dummy; } ;
struct TYPE_4__ {TYPE_1__* f_fglob; } ;
struct TYPE_3__ {scalar_t__ fg_data; } ;


 int EV_CLEAR ;
 int filt_soread_common (struct knote*,struct socket*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;

__attribute__((used)) static int
filt_sorprocess(struct knote *kn, struct filt_process_s *data, struct kevent_internal_s *kev)
{
#pragma unused(data)
 struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
 int retval;

 socket_lock(so, 1);
 retval = filt_soread_common(kn, so);
 if (retval) {
  *kev = kn->kn_kevent;
  if (kn->kn_flags & EV_CLEAR) {
   kn->kn_fflags = 0;
   kn->kn_data = 0;
  }
 }
 socket_unlock(so, 1);

 return retval;
}
