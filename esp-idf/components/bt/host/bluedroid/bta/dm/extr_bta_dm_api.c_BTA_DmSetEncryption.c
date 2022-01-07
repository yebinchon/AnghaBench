
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_TRANSPORT ;
typedef int tBTA_DM_ENCRYPT_CBACK ;
typedef int tBTA_DM_BLE_SEC_ACT ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int sec_act; int * p_callback; int transport; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SET_ENCRYPTION ;
typedef int BD_ADDR ;


 int APPL_TRACE_API (char*) ;
 int BD_ADDR_LEN ;
 int BTA_DM_API_SET_ENCRYPTION_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmSetEncryption(BD_ADDR bd_addr, tBTA_TRANSPORT transport, tBTA_DM_ENCRYPT_CBACK *p_callback,
                         tBTA_DM_BLE_SEC_ACT sec_act)
{
    tBTA_DM_API_SET_ENCRYPTION *p_msg;

    APPL_TRACE_API("BTA_DmSetEncryption");
    if ((p_msg = (tBTA_DM_API_SET_ENCRYPTION *) osi_malloc(sizeof(tBTA_DM_API_SET_ENCRYPTION))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_SET_ENCRYPTION));

        p_msg->hdr.event = BTA_DM_API_SET_ENCRYPTION_EVT;

        memcpy(p_msg->bd_addr, bd_addr, BD_ADDR_LEN);
        p_msg->transport = transport;
        p_msg->p_callback = p_callback;
        p_msg->sec_act = sec_act;

        bta_sys_sendmsg(p_msg);
    }
}
