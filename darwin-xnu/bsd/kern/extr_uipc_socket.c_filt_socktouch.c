
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct socket {int dummy; } ;
struct knote {int kn_sfflags; int kn_hookid; int kn_sdata; TYPE_2__* kn_fp; } ;
struct kevent_internal_s {int fflags; int data; } ;
struct TYPE_4__ {TYPE_1__* f_fglob; } ;
struct TYPE_3__ {scalar_t__ fg_data; } ;


 int EVFILT_SOCK_LEVEL_TRIGGER_MASK ;
 int filt_sockev_common (struct knote*,struct socket*,int ) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;

__attribute__((used)) static int
filt_socktouch(
 struct knote *kn,
 struct kevent_internal_s *kev)
{
 struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
 uint32_t changed_flags;
 int ret;

 socket_lock(so, 1);


 changed_flags = (kn->kn_sfflags ^ kn->kn_hookid);


 kn->kn_sfflags = kev->fflags;
 kn->kn_sdata = kev->data;
 kn->kn_hookid &=
     ~(changed_flags & EVFILT_SOCK_LEVEL_TRIGGER_MASK);


 ret = filt_sockev_common(kn, so, 0);

 socket_unlock(so, 1);

 return ret;
}
