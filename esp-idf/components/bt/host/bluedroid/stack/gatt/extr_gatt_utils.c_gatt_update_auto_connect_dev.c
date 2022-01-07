
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_TCB ;
typedef int tGATT_REG ;
typedef int tGATT_IF ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_LE ;
 scalar_t__ FALSE ;
 int GATT_TRACE_API (char*) ;
 int GATT_TRACE_ERROR (char*,int ) ;
 int TRUE ;
 scalar_t__ gatt_add_bg_dev_list (int *,int ,scalar_t__) ;
 int * gatt_find_tcb_by_addr (int ,int ) ;
 int * gatt_get_regcb (int ) ;
 scalar_t__ gatt_remove_bg_dev_from_list (int *,int ,scalar_t__) ;
 int gatt_update_app_use_link_flag (int ,int *,int ,int ) ;

BOOLEAN gatt_update_auto_connect_dev (tGATT_IF gatt_if, BOOLEAN add, BD_ADDR bd_addr, BOOLEAN is_initator)
{
    BOOLEAN ret = FALSE;
    tGATT_REG *p_reg;
    tGATT_TCB *p_tcb = gatt_find_tcb_by_addr(bd_addr, BT_TRANSPORT_LE);

    GATT_TRACE_API ("gatt_update_auto_connect_dev ");

    if ((p_reg = gatt_get_regcb(gatt_if)) == ((void*)0)) {
        GATT_TRACE_ERROR("gatt_update_auto_connect_dev - gatt_if %d is not registered", gatt_if);
        return (FALSE);
    }

    if (add) {
        ret = gatt_add_bg_dev_list(p_reg, bd_addr, is_initator);

        if (ret && p_tcb != ((void*)0)) {

            gatt_update_app_use_link_flag(gatt_if, p_tcb, TRUE, TRUE);
        }
    } else {
        ret = gatt_remove_bg_dev_from_list(p_reg, bd_addr, is_initator);
    }
    return ret;
}
