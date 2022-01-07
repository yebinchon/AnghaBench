
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_state_transition {int flag; int quo_tt; int timer; int start_timestamp; } ;


 int BLE_MESH_TRANS_TIMER_START ;
 int K_MSEC (int ) ;
 int bt_mesh_atomic_set_bit (int ,int ) ;
 int k_delayed_work_submit_periodic (int *,int ) ;
 int k_uptime_get () ;

__attribute__((used)) static void transition_timer_start(struct bt_mesh_state_transition *transition)
{
    transition->start_timestamp = k_uptime_get();
    k_delayed_work_submit_periodic(&transition->timer, K_MSEC(transition->quo_tt));
    bt_mesh_atomic_set_bit(transition->flag, BLE_MESH_TRANS_TIMER_START);
}
