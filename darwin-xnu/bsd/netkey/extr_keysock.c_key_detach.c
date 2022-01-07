
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_5__ {scalar_t__ sp_protocol; } ;
struct TYPE_6__ {TYPE_1__ rcb_proto; } ;
struct keycb {TYPE_2__ kp_raw; } ;
struct TYPE_8__ {int any_count; int key_count; } ;
struct TYPE_7__ {int (* pru_detach ) (struct socket*) ;} ;


 scalar_t__ PF_KEY ;
 TYPE_4__ key_cb ;
 int key_freereg (struct socket*) ;
 TYPE_3__ raw_usrreqs ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 scalar_t__ sotorawcb (struct socket*) ;
 int stub1 (struct socket*) ;

__attribute__((used)) static int
key_detach(struct socket *so)
{
 struct keycb *kp = (struct keycb *)sotorawcb(so);
 int error;

 if (kp != 0) {
  if (kp->kp_raw.rcb_proto.sp_protocol == PF_KEY)
   key_cb.key_count--;
  key_cb.any_count--;
  socket_unlock(so, 0);
  key_freereg(so);
  socket_lock(so, 0);
 }
 error = raw_usrreqs.pru_detach(so);
 return error;
}
