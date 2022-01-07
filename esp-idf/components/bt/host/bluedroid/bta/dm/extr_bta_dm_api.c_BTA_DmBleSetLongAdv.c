
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_SET_ADV_DATA_CMPL_CBACK ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int adv_data_len; int * adv_data; int * p_adv_data_cback; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SET_LONG_ADV ;
typedef int UINT8 ;
typedef int UINT32 ;


 int BTA_DM_API_BLE_SET_LONG_ADV_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleSetLongAdv (UINT8 *adv_data, UINT32 adv_data_len,
                            tBTA_SET_ADV_DATA_CMPL_CBACK *p_adv_data_cback)
{
    tBTA_DM_API_SET_LONG_ADV *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_LONG_ADV *)
                 osi_malloc(sizeof(tBTA_DM_API_SET_LONG_ADV))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_BLE_SET_LONG_ADV_EVT;
        p_msg->p_adv_data_cback = p_adv_data_cback;
        p_msg->adv_data = adv_data;
        p_msg->adv_data_len = adv_data_len;

        bta_sys_sendmsg(p_msg);
    }
}
