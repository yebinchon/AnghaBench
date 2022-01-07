
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dhcp {int dummy; } ;
typedef int dhcpol_t ;
typedef int boolean_t ;


 int BOOTP_RESPONSE ;
 int BSDP_RESPONSE ;
 int FALSE ;
 void* IOBSDRegistryEntryForDeviceTree (char*) ;
 void* IOBSDRegistryEntryGetData (void*,int ,int*) ;
 int IOBSDRegistryEntryRelease (void*) ;
 int TRUE ;
 scalar_t__ dhcpol_find (int *,int ,int*,int *) ;
 int dhcpol_parse_packet (int *,struct dhcp const*,int) ;
 int dhcptag_root_path_e ;
 int memcpy (char*,char const*,int) ;
 int printf (char*) ;

__attribute__((used)) static boolean_t
get_root_path(char * root_path)
{
    void * entry;
    boolean_t found = FALSE;
    const void * pkt;
    int pkt_len;

    entry = IOBSDRegistryEntryForDeviceTree("/chosen");
    if (entry == ((void*)0)) {
 return (FALSE);
    }
    pkt = IOBSDRegistryEntryGetData(entry, BSDP_RESPONSE, &pkt_len);
    if (pkt != ((void*)0) && pkt_len >= (int)sizeof(struct dhcp)) {
 printf("netboot: retrieving root path from BSDP response\n");
    }
    else {
 pkt = IOBSDRegistryEntryGetData(entry, BOOTP_RESPONSE,
     &pkt_len);
 if (pkt != ((void*)0) && pkt_len >= (int)sizeof(struct dhcp)) {
     printf("netboot: retrieving root path from BOOTP response\n");
 }
    }
    if (pkt != ((void*)0)) {
 int len;
 dhcpol_t options;
 const char * path;
 const struct dhcp * reply;

 reply = (const struct dhcp *)pkt;
 (void)dhcpol_parse_packet(&options, reply, pkt_len);

 path = (const char *)dhcpol_find(&options,
      dhcptag_root_path_e, &len, ((void*)0));
 if (path) {
     memcpy(root_path, path, len);
     root_path[len] = '\0';
     found = TRUE;
 }
    }
    IOBSDRegistryEntryRelease(entry);
    return (found);

}
