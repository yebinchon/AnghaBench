
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_ADD_WHITELIST_CBACK ;
typedef int tBLE_ADDR_TYPE ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int btm_update_dev_to_white_list (int ,int ,int ,int *) ;

BOOLEAN BTM_BleUpdateAdvWhitelist(BOOLEAN add_remove, BD_ADDR remote_bda, tBLE_ADDR_TYPE addr_type, tBTM_ADD_WHITELIST_CBACK *add_wl_cb)
{
    return btm_update_dev_to_white_list(add_remove, remote_bda, addr_type, add_wl_cb);
}
