
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int direct_bda; int adv_chnl_map; int adv_interval_max; int adv_interval_min; } ;
typedef TYPE_2__ tBTM_BLE_INQ_CB ;
typedef int tBTM_BLE_ADV_CHNL_MAP ;
typedef int tBLE_BD_ADDR ;
typedef int UINT16 ;
struct TYPE_5__ {TYPE_2__ inq_var; } ;
struct TYPE_8__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_7__ {int (* supports_ble ) () ;} ;


 int BTM_TRACE_EVENT (char*) ;
 TYPE_4__ btm_cb ;
 TYPE_3__* controller_get_interface () ;
 int memcpy (int *,int *,int) ;
 int stub1 () ;

void BTM_BleReadAdvParams (UINT16 *adv_int_min, UINT16 *adv_int_max,
                           tBLE_BD_ADDR *p_dir_bda, tBTM_BLE_ADV_CHNL_MAP *p_chnl_map)
{
    tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;

    BTM_TRACE_EVENT ("BTM_BleReadAdvParams ");
    if (!controller_get_interface()->supports_ble()) {
        return ;
    }

    *adv_int_min = p_cb->adv_interval_min;
    *adv_int_max = p_cb->adv_interval_max;
    *p_chnl_map = p_cb->adv_chnl_map;

    if (p_dir_bda != ((void*)0)) {
        memcpy(p_dir_bda, &p_cb->direct_bda, sizeof(tBLE_BD_ADDR));
    }
}
