
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tGATT_IF ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int scan_param_setup_cback; int scan_mode; void* scan_window; void* scan_int; int client_if; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_BLE_SCAN_PARAMS ;
typedef int tBLE_SCAN_PARAM_SETUP_CBACK ;
typedef int tBLE_SCAN_MODE ;
typedef void* UINT32 ;


 int BTA_DM_API_BLE_SCAN_PARAM_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmSetBleScanParams(tGATT_IF client_if, UINT32 scan_interval,
                            UINT32 scan_window, tBLE_SCAN_MODE scan_mode,
                            tBLE_SCAN_PARAM_SETUP_CBACK scan_param_setup_cback)
{
    tBTA_DM_API_BLE_SCAN_PARAMS *p_msg;

    if ((p_msg = (tBTA_DM_API_BLE_SCAN_PARAMS *)osi_malloc(sizeof(tBTA_DM_API_BLE_SCAN_PARAMS))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_BLE_SCAN_PARAMS));
        p_msg->hdr.event = BTA_DM_API_BLE_SCAN_PARAM_EVT;
        p_msg->client_if = client_if;
        p_msg->scan_int = scan_interval;
        p_msg->scan_window = scan_window;
        p_msg->scan_mode = scan_mode;
        p_msg->scan_param_setup_cback = scan_param_setup_cback;

        bta_sys_sendmsg(p_msg);
    }
}
