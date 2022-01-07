
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int protocol_family_t ;
typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_4__ {int if_index; } ;


 int EINVAL ;
 int IFNET_GET_LOCAL_PORTS_ACTIVEONLY ;
 int IFNET_GET_LOCAL_PORTS_EXTBGIDLEONLY ;
 int IFNET_GET_LOCAL_PORTS_NOWAKEUPOK ;
 int IFNET_GET_LOCAL_PORTS_RECVANYIFONLY ;
 int IFNET_GET_LOCAL_PORTS_TCPONLY ;
 int IFNET_GET_LOCAL_PORTS_UDPONLY ;
 int IFNET_GET_LOCAL_PORTS_WILDCARDOK ;
 int INPCB_GET_PORTS_USED_ACTIVEONLY ;
 int INPCB_GET_PORTS_USED_EXTBGIDLEONLY ;
 int INPCB_GET_PORTS_USED_NOWAKEUPOK ;
 int INPCB_GET_PORTS_USED_RECVANYIFONLY ;
 int INPCB_GET_PORTS_USED_WILDCARDOK ;
 int IP_PORTRANGE_SIZE ;



 int bitstr_size (int ) ;
 int bzero (int *,int ) ;
 int if_ports_used_update_wakeuuid (TYPE_1__*) ;
 int tcp_get_ports_used (int,int ,int,int *) ;
 int udp_get_ports_used (int,int ,int,int *) ;

errno_t
ifnet_get_local_ports_extended(ifnet_t ifp, protocol_family_t protocol,
    u_int32_t flags, u_int8_t *bitfield)
{
 u_int32_t ifindex;
 u_int32_t inp_flags = 0;

 if (bitfield == ((void*)0))
  return (EINVAL);

 switch (protocol) {
 case 128:
 case 130:
 case 129:
  break;
 default:
  return (EINVAL);
 }


 bzero(bitfield, bitstr_size(IP_PORTRANGE_SIZE));

 if_ports_used_update_wakeuuid(ifp);


  inp_flags |= ((flags & IFNET_GET_LOCAL_PORTS_WILDCARDOK) ?
   INPCB_GET_PORTS_USED_WILDCARDOK : 0);
  inp_flags |= ((flags & IFNET_GET_LOCAL_PORTS_NOWAKEUPOK) ?
   INPCB_GET_PORTS_USED_NOWAKEUPOK : 0);
  inp_flags |= ((flags & IFNET_GET_LOCAL_PORTS_RECVANYIFONLY) ?
   INPCB_GET_PORTS_USED_RECVANYIFONLY : 0);
  inp_flags |= ((flags & IFNET_GET_LOCAL_PORTS_EXTBGIDLEONLY) ?
   INPCB_GET_PORTS_USED_EXTBGIDLEONLY : 0);
  inp_flags |= ((flags & IFNET_GET_LOCAL_PORTS_ACTIVEONLY) ?
   INPCB_GET_PORTS_USED_ACTIVEONLY : 0);

  ifindex = (ifp != ((void*)0)) ? ifp->if_index : 0;

  if (!(flags & IFNET_GET_LOCAL_PORTS_TCPONLY))
   udp_get_ports_used(ifindex, protocol, inp_flags,
       bitfield);

  if (!(flags & IFNET_GET_LOCAL_PORTS_UDPONLY))
   tcp_get_ports_used(ifindex, protocol, inp_flags,
       bitfield);

 return (0);
}
