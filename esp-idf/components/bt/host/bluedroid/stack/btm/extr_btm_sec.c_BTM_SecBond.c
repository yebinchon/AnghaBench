
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBT_TRANSPORT ;
typedef int tBTM_STATUS ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int BD_ADDR ;


 scalar_t__ BTM_UseLeLink (int ) ;
 int BT_TRANSPORT_BR_EDR ;
 int BT_TRANSPORT_LE ;
 int btm_sec_bond_by_transport (int ,int ,int ,int *,int *) ;

tBTM_STATUS BTM_SecBond (BD_ADDR bd_addr, UINT8 pin_len, UINT8 *p_pin, UINT32 trusted_mask[])
{
    tBT_TRANSPORT transport = BT_TRANSPORT_BR_EDR;

    if (BTM_UseLeLink(bd_addr)) {
        transport = BT_TRANSPORT_LE;
    }

    return btm_sec_bond_by_transport(bd_addr, transport, pin_len, p_pin, trusted_mask);
}
