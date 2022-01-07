
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBT_TRANSPORT ;
typedef int tBT_DEVICE_TYPE ;
typedef int tBTM_STATUS ;
typedef int tBLE_ADDR_TYPE ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int BD_ADDR ;


 int BTM_ILLEGAL_ACTION ;
 int BTM_ReadDevInfo (int ,int*,int *) ;
 int BT_DEVICE_TYPE_BLE ;
 int BT_DEVICE_TYPE_BREDR ;
 scalar_t__ BT_TRANSPORT_BR_EDR ;
 scalar_t__ BT_TRANSPORT_LE ;
 int btm_sec_bond_by_transport (int ,scalar_t__,int ,int *,int *) ;

tBTM_STATUS BTM_SecBondByTransport (BD_ADDR bd_addr, tBT_TRANSPORT transport,
                                    UINT8 pin_len, UINT8 *p_pin, UINT32 trusted_mask[])
{

    tBT_DEVICE_TYPE dev_type;
    tBLE_ADDR_TYPE addr_type;

    BTM_ReadDevInfo(bd_addr, &dev_type, &addr_type);

    if ((transport == BT_TRANSPORT_LE && (dev_type & BT_DEVICE_TYPE_BLE) == 0) ||
            (transport == BT_TRANSPORT_BR_EDR && (dev_type & BT_DEVICE_TYPE_BREDR) == 0)) {
        return BTM_ILLEGAL_ACTION;
    }


    return btm_sec_bond_by_transport(bd_addr, transport, pin_len, p_pin, trusted_mask);
}
