
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int * p_dir_bda; void* adv_int_max; void* adv_int_min; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_ADV_PARAMS ;
typedef int tBLE_BD_ADDR ;
typedef void* UINT16 ;


 int APPL_TRACE_API (char*,void*,void*) ;
 int BTA_DM_API_BLE_ADV_PARAM_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmSetBleAdvParams (UINT16 adv_int_min, UINT16 adv_int_max,
                            tBLE_BD_ADDR *p_dir_bda)
{

    tBTA_DM_API_BLE_ADV_PARAMS *p_msg;

    APPL_TRACE_API ("BTA_DmSetBleAdvParam: %d, %d\n", adv_int_min, adv_int_max);

    if ((p_msg = (tBTA_DM_API_BLE_ADV_PARAMS *) osi_malloc(sizeof(tBTA_DM_API_BLE_ADV_PARAMS)
                 + sizeof(tBLE_BD_ADDR))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_BLE_ADV_PARAMS) + sizeof(tBLE_BD_ADDR));

        p_msg->hdr.event = BTA_DM_API_BLE_ADV_PARAM_EVT;

        p_msg->adv_int_min = adv_int_min;
        p_msg->adv_int_max = adv_int_max;

        if (p_dir_bda != ((void*)0)) {
            p_msg->p_dir_bda = (tBLE_BD_ADDR *)(p_msg + 1);
            memcpy(p_msg->p_dir_bda, p_dir_bda, sizeof(tBLE_BD_ADDR));
        }

        bta_sys_sendmsg(p_msg);
    }

}
