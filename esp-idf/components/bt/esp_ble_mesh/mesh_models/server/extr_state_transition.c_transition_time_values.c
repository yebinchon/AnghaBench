
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8_t ;
struct bt_mesh_state_transition {unsigned int trans_time; unsigned int delay; int quo_tt; int total_duration; int counter; } ;


 int tt_values_calculator (struct bt_mesh_state_transition*) ;

__attribute__((used)) static void transition_time_values(struct bt_mesh_state_transition *transition,
                                   u8_t trans_time, u8_t delay)
{
    transition->trans_time = trans_time;
    transition->delay = delay;

    if (trans_time == 0U) {
        return;
    }

    tt_values_calculator(transition);
    transition->quo_tt = transition->total_duration / transition->counter;
}
