
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int remote_bd_addr; int flag; int device_type; int inq_result_type; int ble_addr_type; int rssi; int dev_class; } ;
typedef TYPE_2__ tBTM_INQ_RESULTS ;
struct TYPE_11__ {void* appl_knows_rem_name; } ;
typedef TYPE_3__ tBTM_INQ_INFO ;
struct TYPE_9__ {void* remt_name_not_required; int * p_eir; int flag; int device_type; int inq_result_type; int ble_addr_type; int rssi; void* is_limited; int dev_class; int bd_addr; } ;
struct TYPE_12__ {TYPE_1__ inq_res; } ;
typedef TYPE_4__ tBTA_DM_SEARCH ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_13__ {int (* p_search_cback ) (int ,TYPE_4__*) ;} ;


 int BTA_DM_INQ_RES_EVT ;
 int BTM_COD_SERVICE_CLASS (int,int ) ;
 int BTM_COD_SERVICE_LMTD_DISCOVER ;
 TYPE_3__* BTM_InqDbRead (int ) ;
 int DEV_CLASS_LEN ;
 void* FALSE ;
 void* TRUE ;
 int bdcpy (int ,int ) ;
 TYPE_6__ bta_dm_search_cb ;
 int memcpy (int ,int ,int ) ;
 int stub1 (int ,TYPE_4__*) ;

__attribute__((used)) static void bta_dm_inq_results_cb (tBTM_INQ_RESULTS *p_inq, UINT8 *p_eir)
{

    tBTA_DM_SEARCH result;
    tBTM_INQ_INFO *p_inq_info;
    UINT16 service_class;

    bdcpy(result.inq_res.bd_addr, p_inq->remote_bd_addr);
    memcpy(result.inq_res.dev_class, p_inq->dev_class, DEV_CLASS_LEN);
    BTM_COD_SERVICE_CLASS(service_class, p_inq->dev_class);
    result.inq_res.is_limited = (service_class & BTM_COD_SERVICE_LMTD_DISCOVER) ? TRUE : FALSE;
    result.inq_res.rssi = p_inq->rssi;


    result.inq_res.ble_addr_type = p_inq->ble_addr_type;
    result.inq_res.inq_result_type = p_inq->inq_result_type;
    result.inq_res.device_type = p_inq->device_type;
    result.inq_res.flag = p_inq->flag;



    result.inq_res.p_eir = p_eir;

    if ((p_inq_info = BTM_InqDbRead(p_inq->remote_bd_addr)) != ((void*)0)) {

        result.inq_res.remt_name_not_required = FALSE;

    }

    if (bta_dm_search_cb.p_search_cback) {
        bta_dm_search_cb.p_search_cback(BTA_DM_INQ_RES_EVT, &result);
    }

    if (p_inq_info) {


        if (result.inq_res.remt_name_not_required) {
            p_inq_info->appl_knows_rem_name = TRUE;
        }

    }


}
