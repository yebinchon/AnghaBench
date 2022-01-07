
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBT_DEVICE_TYPE ;
typedef int tBLE_ADDR_TYPE ;
typedef int tACL_CONN ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTM_ReadDevInfo (int ,scalar_t__*,int *) ;
 scalar_t__ BT_DEVICE_TYPE_BLE ;
 int BT_TRANSPORT_BR_EDR ;
 int BT_TRANSPORT_LE ;
 int FALSE ;
 int TRUE ;
 int * btm_bda_to_acl (int ,int ) ;

BOOLEAN BTM_UseLeLink (BD_ADDR bd_addr)
{
    tACL_CONN *p;
    tBT_DEVICE_TYPE dev_type;
    tBLE_ADDR_TYPE addr_type;
    BOOLEAN use_le = FALSE;

    if ((p = btm_bda_to_acl(bd_addr, BT_TRANSPORT_BR_EDR)) != ((void*)0)) {
        return use_le;
    } else if ((p = btm_bda_to_acl(bd_addr, BT_TRANSPORT_LE)) != ((void*)0)) {
        use_le = TRUE;
    } else {
        BTM_ReadDevInfo(bd_addr, &dev_type, &addr_type);
        use_le = (dev_type == BT_DEVICE_TYPE_BLE);
    }
    return use_le;
}
