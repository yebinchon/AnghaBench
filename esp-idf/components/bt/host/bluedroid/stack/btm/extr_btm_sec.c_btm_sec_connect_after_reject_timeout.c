
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int sec_bd_name; int dev_class; int bd_addr; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
struct TYPE_7__ {int (* p_auth_complete_callback ) (int ,int ,int ,int ) ;} ;
struct TYPE_6__ {scalar_t__ param; } ;
struct TYPE_9__ {TYPE_2__ api; TYPE_3__* p_collided_dev_rec; TYPE_1__ sec_collision_tle; } ;
typedef int TIMER_LIST_ENT ;


 scalar_t__ BTM_CMD_STARTED ;
 int BTM_PAIR_STATE_IDLE ;
 int BTM_TRACE_EVENT (char*) ;
 int BTM_TRACE_WARNING (char*) ;
 int HCI_ERR_MEMORY_FULL ;
 int UNUSED (int *) ;
 TYPE_5__ btm_cb ;
 int btm_sec_change_pairing_state (int ) ;
 scalar_t__ btm_sec_dd_create_conn (TYPE_3__*) ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void btm_sec_connect_after_reject_timeout (TIMER_LIST_ENT *p_tle)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_cb.p_collided_dev_rec;
    UNUSED(p_tle);

    BTM_TRACE_EVENT ("btm_sec_connect_after_reject_timeout()\n");
    btm_cb.sec_collision_tle.param = 0;
    btm_cb.p_collided_dev_rec = 0;

    if (btm_sec_dd_create_conn(p_dev_rec) != BTM_CMD_STARTED) {
        BTM_TRACE_WARNING ("Security Manager: btm_sec_connect_after_reject_timeout: failed to start connection\n");

        btm_sec_change_pairing_state (BTM_PAIR_STATE_IDLE);

        if (btm_cb.api.p_auth_complete_callback) {
            (*btm_cb.api.p_auth_complete_callback) (p_dev_rec->bd_addr, p_dev_rec->dev_class,
                                                    p_dev_rec->sec_bd_name, HCI_ERR_MEMORY_FULL);
        }
    }
}
