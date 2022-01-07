
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* ifnet_t ;
typedef int ifnet_offload_t ;
typedef int errno_t ;
struct TYPE_8__ {int if_hwassist; } ;


 int EINVAL ;
 int IFCAP_CSUM_PARTIAL ;
 int IFCAP_CSUM_ZERO_INVERT ;
 int IFCAP_HWCSUM ;
 int IFCAP_HW_TIMESTAMP ;
 int IFCAP_SW_TIMESTAMP ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_TXSTATUS ;
 int IFCAP_VALID ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_MTU ;
 int IFNET_CSUM_PARTIAL ;
 int IFNET_CSUM_TCP ;
 int IFNET_CSUM_TCPIPV6 ;
 int IFNET_CSUM_UDP ;
 int IFNET_CSUM_UDPIPV6 ;
 int IFNET_CSUM_ZERO_INVERT ;
 int IFNET_HW_TIMESTAMP ;
 int IFNET_OFFLOADF_BITS ;
 int IFNET_SW_TIMESTAMP ;
 int IFNET_TSO_IPV4 ;
 int IFNET_TSO_IPV6 ;
 int IFNET_TX_STATUS ;
 int IFNET_VLAN_MTU ;
 int IFNET_VLAN_TAGGING ;
 int LOG_DEBUG ;
 int any_offload_csum ;
 scalar_t__ dlil_verbose ;
 int if_name (TYPE_1__*) ;
 int ifnet_lock_done (TYPE_1__*) ;
 int ifnet_lock_exclusive (TYPE_1__*) ;
 int ifnet_set_capabilities_enabled (TYPE_1__*,int ,int ) ;
 int ifnet_set_capabilities_supported (TYPE_1__*,int ,int ) ;
 int log (int ,char*,int ,int,int ) ;
 int offload_mask ;

errno_t
ifnet_set_offload(ifnet_t interface, ifnet_offload_t offload)
{
 u_int32_t ifcaps = 0;

 if (interface == ((void*)0))
  return (EINVAL);

 ifnet_lock_exclusive(interface);
 interface->if_hwassist = (offload & offload_mask);







 if (interface->if_hwassist & IFNET_CSUM_PARTIAL) {
  interface->if_hwassist |= (IFNET_CSUM_TCP | IFNET_CSUM_UDP |
      IFNET_CSUM_TCPIPV6 | IFNET_CSUM_UDPIPV6);
 }
 if (dlil_verbose) {
  log(LOG_DEBUG, "%s: set offload flags=%b\n",
      if_name(interface),
      interface->if_hwassist, IFNET_OFFLOADF_BITS);
 }
 ifnet_lock_done(interface);

 if ((offload & any_offload_csum))
  ifcaps |= IFCAP_HWCSUM;
 if ((offload & IFNET_TSO_IPV4))
  ifcaps |= IFCAP_TSO4;
 if ((offload & IFNET_TSO_IPV6))
  ifcaps |= IFCAP_TSO6;
 if ((offload & IFNET_VLAN_MTU))
  ifcaps |= IFCAP_VLAN_MTU;
 if ((offload & IFNET_VLAN_TAGGING))
  ifcaps |= IFCAP_VLAN_HWTAGGING;
 if ((offload & IFNET_TX_STATUS))
  ifcaps |= IFCAP_TXSTATUS;
 if ((offload & IFNET_HW_TIMESTAMP))
  ifcaps |= IFCAP_HW_TIMESTAMP;
 if ((offload & IFNET_SW_TIMESTAMP))
  ifcaps |= IFCAP_SW_TIMESTAMP;
 if ((offload & IFNET_CSUM_PARTIAL))
  ifcaps |= IFCAP_CSUM_PARTIAL;
 if ((offload & IFNET_CSUM_ZERO_INVERT))
  ifcaps |= IFCAP_CSUM_ZERO_INVERT;
 if (ifcaps != 0) {
  (void) ifnet_set_capabilities_supported(interface, ifcaps,
      IFCAP_VALID);
  (void) ifnet_set_capabilities_enabled(interface, ifcaps,
      IFCAP_VALID);
 }

 return (0);
}
