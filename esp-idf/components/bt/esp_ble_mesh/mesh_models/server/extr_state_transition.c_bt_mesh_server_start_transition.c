
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct bt_mesh_state_transition {int delay; TYPE_1__ timer; int flag; } ;


 int BLE_MESH_TRANS_TIMER_START ;
 int K_MSEC (int) ;
 int bt_mesh_atomic_set_bit (int ,int ) ;
 int k_delayed_work_submit (TYPE_1__*,int ) ;
 int k_work_submit (int *) ;

void bt_mesh_server_start_transition(struct bt_mesh_state_transition *transition)
{
    if (transition->delay) {
        k_delayed_work_submit(&transition->timer, K_MSEC(5 * transition->delay));
        bt_mesh_atomic_set_bit(transition->flag, BLE_MESH_TRANS_TIMER_START);
    } else {
        k_work_submit(&transition->timer.work);
    }
}
