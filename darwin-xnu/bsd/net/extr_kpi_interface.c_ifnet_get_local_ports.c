
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int ifnet_t ;
typedef int errno_t ;


 int IFNET_GET_LOCAL_PORTS_WILDCARDOK ;
 int PF_UNSPEC ;
 int ifnet_get_local_ports_extended (int ,int ,int ,int *) ;

errno_t
ifnet_get_local_ports(ifnet_t ifp, u_int8_t *bitfield)
{
 u_int32_t flags = IFNET_GET_LOCAL_PORTS_WILDCARDOK;
 return (ifnet_get_local_ports_extended(ifp, PF_UNSPEC, flags,
     bitfield));
}
