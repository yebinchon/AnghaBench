
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8_t ;
typedef int u64_t ;
struct schedule_register {scalar_t__ action; scalar_t__ trans_time; scalar_t__ second; scalar_t__ day_of_week; scalar_t__ hour; scalar_t__ minute; scalar_t__ month; scalar_t__ day; scalar_t__ year; } ;
struct bt_mesh_scheduler_state {struct schedule_register* schedules; } ;



__attribute__((used)) static u64_t get_schedule_reg_state(struct bt_mesh_scheduler_state *state, u8_t index)
{
    struct schedule_register *reg = &state->schedules[index];
    u64_t val;

    val = ((u64_t)(reg->year) << 4) | index;
    val |= ((u64_t)(reg->day) << 23) | ((u64_t)(reg->month) << 11);
    val |= ((u64_t)(reg->minute) << 33) | ((u64_t)(reg->hour) << 28);
    val |= ((u64_t)(reg->day_of_week) << 45) | ((u64_t)(reg->second) << 39);
    val |= ((u64_t)(reg->trans_time) << 56) | ((u64_t)(reg->action) << 52);

    return val;
}
