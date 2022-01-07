
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int so_flags; int so_klist; } ;
struct knote {TYPE_2__* kn_fp; } ;
struct TYPE_4__ {TYPE_1__* f_fglob; } ;
struct TYPE_3__ {scalar_t__ fg_data; } ;


 scalar_t__ KNOTE_DETACH (int *,struct knote*) ;
 int SOF_KNOTE ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;

__attribute__((used)) static void
filt_sockdetach(struct knote *kn)
{
 struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
 socket_lock(so, 1);

 if ((so->so_flags & SOF_KNOTE) != 0)
  if (KNOTE_DETACH(&so->so_klist, kn))
   so->so_flags &= ~SOF_KNOTE;
 socket_unlock(so, 1);
}
