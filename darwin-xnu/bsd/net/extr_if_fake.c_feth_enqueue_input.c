
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mbuf {int dummy; } ;
struct ifnet_stat_increment_param {int packets_in; scalar_t__ bytes_in; } ;
typedef int ifnet_t ;


 scalar_t__ ETHER_HDR_LEN ;
 int ifnet_input (int ,struct mbuf*,struct ifnet_stat_increment_param*) ;
 scalar_t__ mbuf_pkthdr_len (struct mbuf*) ;

__attribute__((used)) static void
feth_enqueue_input(ifnet_t ifp, struct mbuf * m)
{
 struct ifnet_stat_increment_param stats = {};

 stats.packets_in = 1;
 stats.bytes_in = (uint32_t)mbuf_pkthdr_len(m) + ETHER_HDR_LEN;
 ifnet_input(ifp, m, &stats);
}
