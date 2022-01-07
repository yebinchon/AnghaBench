
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct protosw* so_proto; int so_flags; } ;
struct protosw {int dummy; } ;


 scalar_t__ PF_INET ;
 scalar_t__ SOCK_DOM (struct socket*) ;
 int SOF_FLOW_DIVERT ;
 int g_flow_divert_in6_udp_protosw ;
 struct protosw g_flow_divert_in_udp_protosw ;

__attribute__((used)) static void
flow_divert_set_udp_protosw(struct socket *so)
{
        so->so_flags |= SOF_FLOW_DIVERT;
        if (SOCK_DOM(so) == PF_INET) {
                so->so_proto = &g_flow_divert_in_udp_protosw;
        }





}
