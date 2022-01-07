
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int p_bda; int handle; int transport; } ;
struct TYPE_12__ {int p_bda; int hci_status; int new_role; } ;
struct TYPE_11__ {int busy_level_flags; int busy_level; } ;
struct TYPE_10__ {int handle; int transport; int p_bda; } ;
struct TYPE_15__ {int event; TYPE_4__ conn; TYPE_3__ role_chg; TYPE_2__ update; TYPE_1__ discn; } ;
typedef TYPE_6__ tBTM_BL_EVENT_DATA ;
struct TYPE_14__ {int event; } ;
struct TYPE_16__ {int event; TYPE_5__ hdr; int bd_addr; int hci_status; int new_role; int busy_level_flags; int busy_level; int handle; int transport; int is_new; } ;
typedef TYPE_7__ tBTA_DM_ACL_CHANGE ;


 int BTA_DM_ACL_CHANGE_EVT ;





 int FALSE ;
 int TRUE ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_7__*) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static void bta_dm_bl_change_cback (tBTM_BL_EVENT_DATA *p_data)
{
    tBTA_DM_ACL_CHANGE *p_msg;

    if ((p_msg = (tBTA_DM_ACL_CHANGE *) osi_malloc(sizeof(tBTA_DM_ACL_CHANGE))) != ((void*)0)) {
        p_msg->event = p_data->event;
        p_msg->is_new = FALSE;

        switch (p_msg->event) {
        case 131:
            p_msg->is_new = TRUE;
            bdcpy(p_msg->bd_addr, p_data->conn.p_bda);

            p_msg->transport = p_data->conn.transport;
            p_msg->handle = p_data->conn.handle;

            break;
        case 130:
            bdcpy(p_msg->bd_addr, p_data->discn.p_bda);

            p_msg->transport = p_data->discn.transport;
            p_msg->handle = p_data->discn.handle;

            break;
        case 128:
            p_msg->busy_level = p_data->update.busy_level;
            p_msg->busy_level_flags = p_data->update.busy_level_flags;
            break;
        case 129:
            p_msg->new_role = p_data->role_chg.new_role;
            p_msg->hci_status = p_data->role_chg.hci_status;
            bdcpy(p_msg->bd_addr, p_data->role_chg.p_bda);
            break;
        case 132:
            bdcpy(p_msg->bd_addr, p_data->conn.p_bda);
            break;
        }

        p_msg->hdr.event = BTA_DM_ACL_CHANGE_EVT;
        bta_sys_sendmsg(p_msg);

    }

}
