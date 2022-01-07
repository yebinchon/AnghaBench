
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int value; int len; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_OOB_REPLY ;
typedef int UINT8 ;
typedef int * BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTA_DM_API_OOB_REPLY_EVT ;
 int BT_OCTET16_LEN ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,int *,int ) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmOobReply(BD_ADDR bd_addr, UINT8 len, UINT8 *p_value)
{
    tBTA_DM_API_OOB_REPLY *p_msg;

    if ((p_msg = (tBTA_DM_API_OOB_REPLY *) osi_malloc(sizeof(tBTA_DM_API_OOB_REPLY))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_OOB_REPLY_EVT;
        if(p_value == ((void*)0) || len > BT_OCTET16_LEN) {
            return;
        }
        memcpy(p_msg->bd_addr, bd_addr, BD_ADDR_LEN);
        p_msg->len = len;
        memcpy(p_msg->value, p_value, len);
        bta_sys_sendmsg(p_msg);
    }
}
