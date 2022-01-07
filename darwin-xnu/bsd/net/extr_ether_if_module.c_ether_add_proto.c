
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct ifnet_demux_desc {int dummy; } ;
typedef int protocol_family_t ;
typedef int ifnet_t ;


 int ether_add_proto_internal (int ,int ,struct ifnet_demux_desc const*) ;
 int ether_del_proto (int ,int ) ;

int
ether_add_proto(ifnet_t ifp, protocol_family_t protocol,
    const struct ifnet_demux_desc *demux_list, u_int32_t demux_count)
{
 int error = 0;
 u_int32_t i;

 for (i = 0; i < demux_count; i++) {
  error = ether_add_proto_internal(ifp, protocol, &demux_list[i]);
  if (error) {
   ether_del_proto(ifp, protocol);
   break;
  }
 }

 return (error);
}
