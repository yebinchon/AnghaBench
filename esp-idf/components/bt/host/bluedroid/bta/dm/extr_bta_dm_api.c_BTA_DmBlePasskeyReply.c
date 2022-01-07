
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int passkey; scalar_t__ accept; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_PASSKEY_REPLY ;
typedef int UINT32 ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BTA_DM_API_BLE_PASSKEY_REPLY_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBlePasskeyReply(BD_ADDR bd_addr, BOOLEAN accept, UINT32 passkey)
{
    tBTA_DM_API_PASSKEY_REPLY *p_msg;

    if ((p_msg = (tBTA_DM_API_PASSKEY_REPLY *) osi_malloc(sizeof(tBTA_DM_API_PASSKEY_REPLY))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_PASSKEY_REPLY));

        p_msg->hdr.event = BTA_DM_API_BLE_PASSKEY_REPLY_EVT;
        bdcpy(p_msg->bd_addr, bd_addr);
        p_msg->accept = accept;

        if (accept) {
            p_msg->passkey = passkey;
        }
        bta_sys_sendmsg(p_msg);
    }
}
