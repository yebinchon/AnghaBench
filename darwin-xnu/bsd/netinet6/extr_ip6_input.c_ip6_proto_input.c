
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int protocol_family_t ;
typedef int mbuf_t ;


 int ip6_input (int ) ;
 scalar_t__ ip6_input_measure ;
 int net_perf ;
 int net_perf_histogram (int *,int) ;
 int net_perf_measure_time (int *,struct timeval*,int) ;
 int net_perf_start_time (int *,struct timeval*) ;

__attribute__((used)) static void
ip6_proto_input(protocol_family_t protocol, mbuf_t packet)
{
#pragma unused(protocol)





 ip6_input(packet);






}
