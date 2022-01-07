
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_4__ {int sp_protocol; } ;
struct rawcb {TYPE_1__ rcb_proto; } ;
struct TYPE_6__ {int (* pru_detach ) (struct socket*) ;} ;
struct TYPE_5__ {int any_count; int ip6_count; int ip_count; } ;




 int VERIFY (int ) ;
 int atomic_add_32 (int *,int) ;
 TYPE_3__ raw_usrreqs ;
 TYPE_2__ route_cb ;
 struct rawcb* sotorawcb (struct socket*) ;
 int stub1 (struct socket*) ;

__attribute__((used)) static int
rts_detach(struct socket *so)
{
 struct rawcb *rp = sotorawcb(so);

 VERIFY(rp != ((void*)0));

 switch (rp->rcb_proto.sp_protocol) {
 case 129:
  atomic_add_32(&route_cb.ip_count, -1);
  break;
 case 128:
  atomic_add_32(&route_cb.ip6_count, -1);
  break;
 }
 atomic_add_32(&route_cb.any_count, -1);
 return (raw_usrreqs.pru_detach(so));
}
