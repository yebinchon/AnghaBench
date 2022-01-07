
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int add; int static_passkey; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SET_DEFAULT_PASSKEY ;


 int BTA_DM_API_BLE_SET_STATIC_PASSKEY_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleSetStaticPasskey(bool add, uint32_t passkey)
{
    tBTA_DM_API_SET_DEFAULT_PASSKEY *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_DEFAULT_PASSKEY *) osi_malloc(sizeof(tBTA_DM_API_SET_DEFAULT_PASSKEY))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_SET_DEFAULT_PASSKEY));

        p_msg->hdr.event = BTA_DM_API_BLE_SET_STATIC_PASSKEY_EVT;
        p_msg->add = add;
        p_msg->static_passkey = passkey;
        bta_sys_sendmsg(p_msg);
    }
}
