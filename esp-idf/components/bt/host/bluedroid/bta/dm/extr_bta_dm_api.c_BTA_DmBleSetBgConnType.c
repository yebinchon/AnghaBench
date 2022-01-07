
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_DM_BLE_SEL_CBACK ;
typedef int tBTA_DM_BLE_CONN_TYPE ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int * p_select_cback; int bg_conn_type; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_SET_BG_CONN_TYPE ;


 int BTA_DM_API_BLE_SET_BG_CONN_TYPE ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleSetBgConnType(tBTA_DM_BLE_CONN_TYPE bg_conn_type, tBTA_DM_BLE_SEL_CBACK *p_select_cback)
{

    tBTA_DM_API_BLE_SET_BG_CONN_TYPE *p_msg;

    if ((p_msg = (tBTA_DM_API_BLE_SET_BG_CONN_TYPE *) osi_malloc(sizeof(tBTA_DM_API_BLE_SET_BG_CONN_TYPE))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_BLE_SET_BG_CONN_TYPE));

        p_msg->hdr.event = BTA_DM_API_BLE_SET_BG_CONN_TYPE;
        p_msg->bg_conn_type = bg_conn_type;
        p_msg->p_select_cback = p_select_cback;

        bta_sys_sendmsg(p_msg);
    }

}
