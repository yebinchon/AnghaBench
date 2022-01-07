
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct bt_mesh_state_transition {int remain_time; int trans_time; int total_duration; int start_timestamp; scalar_t__ just_started; } ;
typedef int s64_t ;
typedef int s32_t ;


 int k_uptime_get () ;

void bt_mesh_server_calc_remain_time(struct bt_mesh_state_transition *transition)
{
    u8_t steps, resolution;
    s32_t duration_remainder;
    s64_t now;

    if (transition->just_started) {
        transition->remain_time = transition->trans_time;
    } else {
        now = k_uptime_get();
        duration_remainder = transition->total_duration -
                             (now - transition->start_timestamp);
        if (duration_remainder > 620000) {

            resolution = 0x03;
            steps = duration_remainder / 600000;
        } else if (duration_remainder > 62000) {

            resolution = 0x02;
            steps = duration_remainder / 10000;
        } else if (duration_remainder > 6200) {

            resolution = 0x01;
            steps = duration_remainder / 1000;
        } else if (duration_remainder > 0) {

            resolution = 0x00;
            steps = duration_remainder / 100;
        } else {
            resolution = 0x00;
            steps = 0x00;
        }

        transition->remain_time = (resolution << 6) | steps;
    }
}
