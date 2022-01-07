
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;
 int memcmp (void const*,int *,int) ;
 int os_bzero (int *,int) ;

int hostapd_mac_comp_empty(const void *a)
{
    u8 empty[ETH_ALEN];

    os_bzero(empty, ETH_ALEN);

    return memcmp(a, empty, ETH_ALEN);
}
