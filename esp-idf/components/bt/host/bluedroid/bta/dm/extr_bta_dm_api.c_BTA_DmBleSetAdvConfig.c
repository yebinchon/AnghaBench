
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_SET_ADV_DATA_CMPL_CBACK ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int * p_adv_cfg; int * p_adv_data_cback; int data_mask; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SET_ADV_CONFIG ;
typedef int tBTA_BLE_AD_MASK ;
typedef int tBTA_BLE_ADV_DATA ;


 int BTA_DM_API_BLE_SET_ADV_CONFIG_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleSetAdvConfig (tBTA_BLE_AD_MASK data_mask, tBTA_BLE_ADV_DATA *p_adv_cfg,
                            tBTA_SET_ADV_DATA_CMPL_CBACK *p_adv_data_cback)
{
    tBTA_DM_API_SET_ADV_CONFIG *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_ADV_CONFIG *)
                 osi_malloc(sizeof(tBTA_DM_API_SET_ADV_CONFIG))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_BLE_SET_ADV_CONFIG_EVT;
        p_msg->data_mask = data_mask;
        p_msg->p_adv_data_cback = p_adv_data_cback;
        p_msg->p_adv_cfg = p_adv_cfg;

        bta_sys_sendmsg(p_msg);
    }
}
