
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int dhcpol_t ;
typedef int boolean_t ;


 int DHCP_LEN_OFFSET ;
 int DHCP_OPTION_OFFSET ;
 int DHCP_TAG_OFFSET ;
 int FALSE ;
 int TRUE ;
 int dhcpol_add (int *,int const*) ;
 int dhcpol_free (int *) ;
 int dhcpol_init (int *) ;


 int dprintf (char*) ;

boolean_t
dhcpol_parse_buffer(dhcpol_t * list, const void * buffer, int length)
{
    int len;
    const uint8_t * scan;
    uint8_t tag;

    dhcpol_init(list);

    len = length;
    tag = 128;
    for (scan = (const uint8_t *)buffer;
  tag != 129 && len > DHCP_TAG_OFFSET; ) {

 tag = scan[DHCP_TAG_OFFSET];

 switch (tag) {
   case 129:

       dhcpol_add(list, scan);
       scan++;
       len--;
       break;
   case 128:
       scan++;
       len--;
       break;
   default:
       if (len > DHCP_LEN_OFFSET) {
    uint8_t option_len;

    option_len = scan[DHCP_LEN_OFFSET];
    dhcpol_add(list, scan);
    len -= (option_len + DHCP_OPTION_OFFSET);
    scan += (option_len + DHCP_OPTION_OFFSET);
       }
       else {
    len = -1;
       }
       break;
 }
    }
    if (len < 0) {

 dprintf(("dhcp_options: parse failed near tag %d\n", tag));
 dhcpol_free(list);
 return (FALSE);
    }
    return (TRUE);
}
