
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_TCB ;
typedef int tGATT_IF ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_LE ;
 int FALSE ;
 int TRUE ;
 int * gatt_find_tcb_by_addr (int ,int ) ;
 int gatt_update_app_use_link_flag (int ,int *,int ,int ) ;
 int gatt_update_auto_connect_dev (int ,int ,int ,int ) ;

BOOLEAN gatt_remove_bg_dev_for_app(tGATT_IF gatt_if, BD_ADDR bd_addr)
{
    tGATT_TCB *p_tcb = gatt_find_tcb_by_addr(bd_addr, BT_TRANSPORT_LE);
    BOOLEAN status;

    if (p_tcb) {
        gatt_update_app_use_link_flag(gatt_if, p_tcb, FALSE, FALSE);
    }
    status = gatt_update_auto_connect_dev(gatt_if, FALSE, bd_addr, TRUE);
    return status;
}
