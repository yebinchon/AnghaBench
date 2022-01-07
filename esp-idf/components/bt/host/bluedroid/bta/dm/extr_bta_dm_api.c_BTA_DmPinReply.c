
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int p_pin; int pin_len; scalar_t__ accept; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_PIN_REPLY ;
typedef int UINT8 ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BTA_DM_API_PIN_REPLY_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,int *,int ) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmPinReply(BD_ADDR bd_addr, BOOLEAN accept, UINT8 pin_len, UINT8 *p_pin)
{
    tBTA_DM_API_PIN_REPLY *p_msg;

    if ((p_msg = (tBTA_DM_API_PIN_REPLY *) osi_malloc(sizeof(tBTA_DM_API_PIN_REPLY))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_PIN_REPLY_EVT;
        bdcpy(p_msg->bd_addr, bd_addr);
        p_msg->accept = accept;
        if (accept) {
            p_msg->pin_len = pin_len;
            memcpy(p_msg->p_pin, p_pin, pin_len);
        }
        bta_sys_sendmsg(p_msg);
    }

}
