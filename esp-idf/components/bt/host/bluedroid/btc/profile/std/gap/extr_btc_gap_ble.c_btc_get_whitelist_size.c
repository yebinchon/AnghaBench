
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BTM_BleGetWhiteListSize (int *) ;

void btc_get_whitelist_size(uint16_t *length)
{
    BTM_BleGetWhiteListSize(length);
    return;
}
