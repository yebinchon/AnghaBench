
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int bd_addr; int transport; scalar_t__ remove_dev; } ;
struct TYPE_9__ {TYPE_4__ remove_acl; } ;
typedef TYPE_3__ tBTA_DM_MSG ;
typedef TYPE_4__ tBTA_DM_API_REMOVE_ACL ;
typedef size_t UINT8 ;
struct TYPE_8__ {size_t count; TYPE_1__* peer_device; } ;
struct TYPE_11__ {TYPE_2__ device_list; } ;
struct TYPE_7__ {int remove_dev_pending; int peer_bdaddr; } ;


 int APPL_TRACE_DEBUG (char*) ;
 int APPL_TRACE_ERROR (char*) ;
 int BTA_GATTC_CancelOpen (int ,int ,int ) ;
 int BTA_GATTC_Refresh (int ,int) ;
 scalar_t__ BTM_IsAclConnectionUp (int ,int ) ;
 int BTM_SecDeleteDevice (int ,int ) ;
 int FALSE ;
 int TRUE ;
 int bdcmp (int ,int ) ;
 TYPE_6__ bta_dm_cb ;
 int btm_remove_acl (int ,int ) ;

void bta_dm_close_acl(tBTA_DM_MSG *p_data)
{
    tBTA_DM_API_REMOVE_ACL *p_remove_acl = &p_data->remove_acl;
    UINT8 index;

    APPL_TRACE_DEBUG("bta_dm_close_acl");

    if (BTM_IsAclConnectionUp(p_remove_acl->bd_addr, p_remove_acl->transport)) {
        for (index = 0; index < bta_dm_cb.device_list.count; index ++) {
            if (!bdcmp( bta_dm_cb.device_list.peer_device[index].peer_bdaddr, p_remove_acl->bd_addr)) {
                break;
            }
        }
        if (index != bta_dm_cb.device_list.count) {
            if (p_remove_acl->remove_dev) {
                bta_dm_cb.device_list.peer_device[index].remove_dev_pending = TRUE;
            }
        } else {
            APPL_TRACE_ERROR("unknown device, remove ACL failed");
        }

        btm_remove_acl(p_remove_acl->bd_addr, p_remove_acl->transport);
    }

    else if (p_remove_acl->remove_dev) {
        if (!BTM_SecDeleteDevice(p_remove_acl->bd_addr, p_remove_acl->transport)) {
            APPL_TRACE_ERROR("delete device from security database failed.");
        }


        BTA_GATTC_CancelOpen(0, p_remove_acl->bd_addr, FALSE);

        BTA_GATTC_Refresh(p_remove_acl->bd_addr, 0);

    }


}
