
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_1__* sr_reg; } ;
struct TYPE_3__ {scalar_t__ s_hdl; scalar_t__ e_hdl; scalar_t__ in_use; } ;


 size_t GATT_MAX_SR_PROFILES ;
 TYPE_2__ gatt_cb ;

UINT8 gatt_sr_find_i_rcb_by_handle(UINT16 handle)
{
    UINT8 i_rcb = 0;

    for ( ; i_rcb < GATT_MAX_SR_PROFILES; i_rcb++) {
        if (gatt_cb.sr_reg[i_rcb].in_use &&
                gatt_cb.sr_reg[i_rcb].s_hdl <= handle &&
                gatt_cb.sr_reg[i_rcb].e_hdl >= handle ) {
            break;
        }
    }
    return i_rcb;
}
