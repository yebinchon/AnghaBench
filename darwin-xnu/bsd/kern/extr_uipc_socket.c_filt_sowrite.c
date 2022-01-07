
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct knote {TYPE_2__* kn_fp; } ;
struct TYPE_4__ {TYPE_1__* f_fglob; } ;
struct TYPE_3__ {scalar_t__ fg_data; } ;


 long SO_FILT_HINT_LOCKED ;
 int filt_sowrite_common (struct knote*,struct socket*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;

__attribute__((used)) static int
filt_sowrite(struct knote *kn, long hint)
{
 struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
 int ret;

 if ((hint & SO_FILT_HINT_LOCKED) == 0)
  socket_lock(so, 1);

 ret = filt_sowrite_common(kn, so);

 if ((hint & SO_FILT_HINT_LOCKED) == 0)
  socket_unlock(so, 1);

 return ret;
}
