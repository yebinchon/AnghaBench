
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int p_pin; void* pin_len; void* pin_type; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SET_PIN_TYPE ;
typedef void* UINT8 ;


 int BTA_DM_API_SET_PIN_TYPE_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,void**,void*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DMSetPinType (UINT8 pin_type, UINT8 *pin_code, UINT8 pin_code_len)
{
    tBTA_DM_API_SET_PIN_TYPE *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_PIN_TYPE *) osi_malloc(sizeof(tBTA_DM_API_SET_PIN_TYPE))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_SET_PIN_TYPE_EVT;
        p_msg->pin_type = pin_type;
        p_msg->pin_len = pin_code_len;
        memcpy(p_msg->p_pin, pin_code, pin_code_len);
        bta_sys_sendmsg(p_msg);
    }
}
