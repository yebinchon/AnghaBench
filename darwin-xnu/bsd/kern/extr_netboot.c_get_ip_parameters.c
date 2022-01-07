
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct dhcp {struct in_addr dp_yiaddr; } ;
typedef int dhcpol_t ;
typedef int boolean_t ;


 int BOOTP_RESPONSE ;
 int DHCP_RESPONSE ;
 int FALSE ;
 void* IOBSDRegistryEntryForDeviceTree (char*) ;
 void* IOBSDRegistryEntryGetData (void*,int ,int*) ;
 int IOBSDRegistryEntryRelease (void*) ;
 scalar_t__ dhcpol_find (int *,int ,int*,int *) ;
 int dhcpol_parse_packet (int *,struct dhcp const*,int) ;
 int dhcptag_router_e ;
 int dhcptag_subnet_mask_e ;
 int printf (char*) ;

__attribute__((used)) static boolean_t
get_ip_parameters(struct in_addr * iaddr_p, struct in_addr * netmask_p,
     struct in_addr * router_p)
{
    void * entry;
    const void * pkt;
    int pkt_len;


    entry = IOBSDRegistryEntryForDeviceTree("/chosen");
    if (entry == ((void*)0)) {
 return (FALSE);
    }
    pkt = IOBSDRegistryEntryGetData(entry, DHCP_RESPONSE, &pkt_len);
    if (pkt != ((void*)0) && pkt_len >= (int)sizeof(struct dhcp)) {
 printf("netboot: retrieving IP information from DHCP response\n");
    }
    else {
 pkt = IOBSDRegistryEntryGetData(entry, BOOTP_RESPONSE, &pkt_len);
 if (pkt != ((void*)0) && pkt_len >= (int)sizeof(struct dhcp)) {
     printf("netboot: retrieving IP information from BOOTP response\n");
 }
    }
    if (pkt != ((void*)0)) {
 const struct in_addr * ip;
 int len;
 dhcpol_t options;
 const struct dhcp * reply;

 reply = (const struct dhcp *)pkt;
 (void)dhcpol_parse_packet(&options, reply, pkt_len);
 *iaddr_p = reply->dp_yiaddr;
 ip = (const struct in_addr *)
     dhcpol_find(&options,
   dhcptag_subnet_mask_e, &len, ((void*)0));
 if (ip) {
     *netmask_p = *ip;
 }
 ip = (const struct in_addr *)
     dhcpol_find(&options, dhcptag_router_e, &len, ((void*)0));
 if (ip) {
     *router_p = *ip;
 }
    }
    IOBSDRegistryEntryRelease(entry);
    return (pkt != ((void*)0));
}
