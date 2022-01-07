
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT8 ;
typedef int UINT16 ;
struct TYPE_6__ {TYPE_1__* srv_list; TYPE_2__* sr_reg; } ;
struct TYPE_5__ {int s_hdl; } ;
struct TYPE_4__ {size_t i_sreg; int is_primary; int s_hdl; int in_use; } ;
typedef int BOOLEAN ;


 int TRUE ;
 int UNUSED (int ) ;
 TYPE_3__ gatt_cb ;

void gatts_update_srv_list_elem(UINT8 i_sreg, UINT16 handle, BOOLEAN is_primary)
{
    UNUSED(handle);

    gatt_cb.srv_list[i_sreg].in_use = TRUE;
    gatt_cb.srv_list[i_sreg].i_sreg = i_sreg;
    gatt_cb.srv_list[i_sreg].s_hdl = gatt_cb.sr_reg[i_sreg].s_hdl;
    gatt_cb.srv_list[i_sreg].is_primary = is_primary;

    return;
}
