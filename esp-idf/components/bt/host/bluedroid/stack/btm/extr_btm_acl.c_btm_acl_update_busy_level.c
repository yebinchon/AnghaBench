
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* busy_level; int event; int busy_level_flags; } ;
typedef TYPE_1__ tBTM_BL_UPDATE_DATA ;
typedef int tBTM_BL_EVENT_DATA ;
typedef int tBTM_BLI_EVENT ;
typedef void* UINT8 ;
struct TYPE_4__ {scalar_t__ is_inquiry; void* busy_level; int bl_evt_mask; int (* p_bl_changed_cb ) (int *) ;void* is_paging; } ;
typedef scalar_t__ BOOLEAN ;
 int BTM_BL_INQUIRY_CANCELLED ;
 int BTM_BL_INQUIRY_COMPLETE ;
 int BTM_BL_INQUIRY_STARTED ;
 int BTM_BL_PAGING_COMPLETE ;
 int BTM_BL_PAGING_STARTED ;
 int BTM_BL_UPDATE_EVT ;
 int BTM_BL_UPDATE_MASK ;
 void* BTM_GetNumAclLinks () ;
 int BTM_TRACE_DEBUG (char*) ;
 void* FALSE ;
 void* TRUE ;
 TYPE_2__ btm_cb ;
 int stub1 (int *) ;

void btm_acl_update_busy_level (tBTM_BLI_EVENT event)
{
    tBTM_BL_UPDATE_DATA evt;
    UINT8 busy_level;
    BTM_TRACE_DEBUG ("btm_acl_update_busy_level\n");
    BOOLEAN old_inquiry_state = btm_cb.is_inquiry;
    switch (event) {
    case 133:
        BTM_TRACE_DEBUG ("BTM_BLI_ACL_UP_EVT\n");
        break;
    case 134:
        BTM_TRACE_DEBUG ("BTM_BLI_ACL_DOWN_EVT\n");
        break;
    case 128:
        BTM_TRACE_DEBUG ("BTM_BLI_PAGE_EVT\n");
        btm_cb.is_paging = TRUE;
        evt.busy_level_flags = BTM_BL_PAGING_STARTED;
        break;
    case 129:
        BTM_TRACE_DEBUG ("BTM_BLI_PAGE_DONE_EVT\n");
        btm_cb.is_paging = FALSE;
        evt.busy_level_flags = BTM_BL_PAGING_COMPLETE;
        break;
    case 130:
        BTM_TRACE_DEBUG ("BTM_BLI_INQ_EVT\n");
        btm_cb.is_inquiry = TRUE;
        evt.busy_level_flags = BTM_BL_INQUIRY_STARTED;
        break;
    case 132:
        BTM_TRACE_DEBUG ("BTM_BLI_INQ_CANCEL_EVT\n");
        btm_cb.is_inquiry = FALSE;
        evt.busy_level_flags = BTM_BL_INQUIRY_CANCELLED;
        break;
    case 131:
        BTM_TRACE_DEBUG ("BTM_BLI_INQ_DONE_EVT\n");
        btm_cb.is_inquiry = FALSE;
        evt.busy_level_flags = BTM_BL_INQUIRY_COMPLETE;
        break;
    }

    if (btm_cb.is_paging || btm_cb.is_inquiry) {
        busy_level = 10;
    } else {
        busy_level = BTM_GetNumAclLinks();
    }

    if ((busy_level != btm_cb.busy_level) || (old_inquiry_state != btm_cb.is_inquiry)) {
        evt.event = BTM_BL_UPDATE_EVT;
        evt.busy_level = busy_level;
        btm_cb.busy_level = busy_level;
        if (btm_cb.p_bl_changed_cb && (btm_cb.bl_evt_mask & BTM_BL_UPDATE_MASK)) {
            (*btm_cb.p_bl_changed_cb)((tBTM_BL_EVENT_DATA *)&evt);
        }
    }
}
