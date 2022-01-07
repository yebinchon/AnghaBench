
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct knote {int kn_sdata; int kn_sfflags; TYPE_2__* kn_fp; } ;
struct kevent_internal_s {int data; int fflags; } ;
struct TYPE_4__ {TYPE_1__* f_fglob; } ;
struct TYPE_3__ {scalar_t__ fg_data; } ;


 int filt_soread_common (struct knote*,struct socket*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;

__attribute__((used)) static int
filt_sortouch(struct knote *kn, struct kevent_internal_s *kev)
{
 struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
 int retval;

 socket_lock(so, 1);


 kn->kn_sfflags = kev->fflags;
 kn->kn_sdata = kev->data;


 retval = filt_soread_common(kn, so);

 socket_unlock(so, 1);

 return retval;
}
