
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8_t ;
typedef int u16_t ;
struct bt_mesh_scheduler_state {size_t schedule_count; TYPE_1__* schedules; } ;
struct TYPE_2__ {scalar_t__ in_use; } ;



__attribute__((used)) static u16_t get_schedule_reg_bit(struct bt_mesh_scheduler_state *state)
{
    u16_t val = 0;
    u8_t i;

    for (i = 0U; i < state->schedule_count; i++) {
        if (state->schedules[i].in_use) {
            val |= (1 << i);
        }
    }

    return val;
}
