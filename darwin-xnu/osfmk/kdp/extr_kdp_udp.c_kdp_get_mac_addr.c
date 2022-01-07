
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kdp_ether_addr {int dummy; } ;


 struct kdp_ether_addr kdp_current_mac_address ;

struct kdp_ether_addr
kdp_get_mac_addr(void)
{
 return kdp_current_mac_address;
}
