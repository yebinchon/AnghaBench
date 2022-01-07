
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_state_transition {int flag; int timer; } ;


 int BLE_MESH_TRANS_TIMER_START ;
 int bt_mesh_atomic_clear_bit (int ,int ) ;
 int k_delayed_work_cancel (int *) ;

__attribute__((used)) static void transition_timer_stop(struct bt_mesh_state_transition *transition)
{
    k_delayed_work_cancel(&transition->timer);
    bt_mesh_atomic_clear_bit(transition->flag, BLE_MESH_TRANS_TIMER_START);
}
