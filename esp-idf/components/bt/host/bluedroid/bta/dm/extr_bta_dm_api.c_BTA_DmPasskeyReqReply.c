
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int passkey; int accept; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_KEY_REQ ;
typedef int UINT32 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTA_DM_API_KEY_REQ_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmPasskeyReqReply(BOOLEAN accept, BD_ADDR bd_addr, UINT32 passkey)
{
    tBTA_DM_API_KEY_REQ *p_msg;
    if ((p_msg = (tBTA_DM_API_KEY_REQ *) osi_malloc(sizeof(tBTA_DM_API_KEY_REQ))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_KEY_REQ_EVT;
        bdcpy(p_msg->bd_addr, bd_addr);
        p_msg->accept = accept;
        p_msg->passkey = passkey;
        bta_sys_sendmsg(p_msg);
    }
}
