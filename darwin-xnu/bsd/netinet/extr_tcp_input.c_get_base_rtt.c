
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {TYPE_2__* t_inpcb; } ;
struct rtentry {int rtt_min; } ;
struct TYPE_3__ {struct rtentry* ro_rt; } ;
struct TYPE_4__ {TYPE_1__ inp_route; } ;



uint32_t
get_base_rtt(struct tcpcb *tp)
{
 struct rtentry *rt = tp->t_inpcb->inp_route.ro_rt;
 return ((rt == ((void*)0)) ? 0 : rt->rtt_min);
}
