
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_UPDATE_DUPLICATE_EXCEPTIONAL_LIST_CMPL_CBACK ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int device_info; int exceptional_list_cb; int type; int subcode; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_UPDATE_DUPLICATE_EXCEPTIONAL_LIST ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int BD_ADDR ;


 int BTA_DM_API_UPDATE_DUPLICATE_EXCEPTIONAL_LIST_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmUpdateDuplicateExceptionalList(UINT8 subcode, UINT32 type, BD_ADDR device_info, tBTA_UPDATE_DUPLICATE_EXCEPTIONAL_LIST_CMPL_CBACK p_update_duplicate_exceptional_list_cback)
{
    tBTA_DM_API_UPDATE_DUPLICATE_EXCEPTIONAL_LIST *p_msg;
    if ((p_msg = (tBTA_DM_API_UPDATE_DUPLICATE_EXCEPTIONAL_LIST *)osi_malloc(sizeof(tBTA_DM_API_UPDATE_DUPLICATE_EXCEPTIONAL_LIST))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_UPDATE_DUPLICATE_EXCEPTIONAL_LIST_EVT;
        p_msg->subcode = subcode;
        p_msg->type = type;
        p_msg->exceptional_list_cb = p_update_duplicate_exceptional_list_cback;
        memcpy(p_msg->device_info, device_info, sizeof(BD_ADDR));

        bta_sys_sendmsg(p_msg);
    }
}
