
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct bt_mesh_state_transition {int trans_time; int total_duration; float counter; } ;


 float BLE_MESH_DEVICE_SPECIFIC_RESOLUTION ;

__attribute__((used)) static void tt_values_calculator(struct bt_mesh_state_transition *transition)
{
    u8_t steps_multiplier, resolution;

    resolution = (transition->trans_time >> 6);
    steps_multiplier = (transition->trans_time & 0x3F);

    switch (resolution) {
    case 0:
        transition->total_duration = steps_multiplier * 100;
        break;
    case 1:
        transition->total_duration = steps_multiplier * 1000;
        break;
    case 2:
        transition->total_duration = steps_multiplier * 10000;
        break;
    case 3:
        transition->total_duration = steps_multiplier * 600000;
        break;
    }

    transition->counter = ((float) transition->total_duration / 100);

    if (transition->counter > BLE_MESH_DEVICE_SPECIFIC_RESOLUTION) {
        transition->counter = BLE_MESH_DEVICE_SPECIFIC_RESOLUTION;
    }
}
