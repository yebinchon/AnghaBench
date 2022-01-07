
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct kevent_internal_s {int dummy; } ;
struct knote {int kn_fflags; int kn_hookid; int kn_flags; scalar_t__ kn_data; struct kevent_internal_s kn_kevent; TYPE_2__* kn_fp; } ;
struct filt_process_s {int dummy; } ;
struct TYPE_4__ {TYPE_1__* f_fglob; } ;
struct TYPE_3__ {scalar_t__ fg_data; } ;


 int EVFILT_SOCK_LEVEL_TRIGGER_MASK ;
 int EV_CLEAR ;
 int NOTE_RESUME ;
 int NOTE_SUSPEND ;
 int filt_sockev_common (struct knote*,struct socket*,int ) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;

__attribute__((used)) static int
filt_sockprocess(
 struct knote *kn,
 struct filt_process_s *data,
 struct kevent_internal_s *kev)
{
#pragma unused(data)

 struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
 int ret = 0;

 socket_lock(so, 1);

 ret = filt_sockev_common(kn, so, 0);
 if (ret) {
  *kev = kn->kn_kevent;







  if (kn->kn_fflags != 0)
   kn->kn_hookid |= (kn->kn_fflags &
       EVFILT_SOCK_LEVEL_TRIGGER_MASK);






  if (kn->kn_fflags & NOTE_SUSPEND)
   kn->kn_hookid &= ~NOTE_RESUME;
  if (kn->kn_fflags & NOTE_RESUME)
   kn->kn_hookid &= ~NOTE_SUSPEND;

  if (kn->kn_flags & EV_CLEAR) {
   kn->kn_data = 0;
   kn->kn_fflags = 0;
  }
 }

 socket_unlock(so, 1);

 return ret;
}
