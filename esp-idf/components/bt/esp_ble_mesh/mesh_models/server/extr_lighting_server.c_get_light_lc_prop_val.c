
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
typedef int u16_t ;
struct bt_mesh_model {struct bt_mesh_light_lc_setup_srv* user_data; } ;
struct bt_mesh_light_lc_setup_srv {TYPE_2__* lc; } ;
struct TYPE_3__ {int regulator_accuracy; int regulator_kpd; int regulator_kpu; int regulator_kid; int regulator_kiu; int ambient_luxlevel_standby; int ambient_luxlevel_prolong; int ambient_luxlevel_on; int lightness_standby; int lightness_prolong; int lightness_on; int time_fade_standby_manual; int time_fade_standby_auto; int time_prolong; int time_fade; int time_run_on; int time_fade_on; int time_occupancy_delay; } ;
struct TYPE_4__ {TYPE_1__ prop_state; } ;
__attribute__((used)) static u8_t *get_light_lc_prop_val(struct bt_mesh_model *model, u16_t prop_id)
{
    struct bt_mesh_light_lc_setup_srv *srv = model->user_data;
    u8_t *val = ((void*)0);

    switch (prop_id) {
    case 130:
        val = (u8_t *)&srv->lc->prop_state.time_occupancy_delay;
        break;
    case 133:
        val = (u8_t *)&srv->lc->prop_state.time_fade_on;
        break;
    case 128:
        val = (u8_t *)&srv->lc->prop_state.time_run_on;
        break;
    case 134:
        val = (u8_t *)&srv->lc->prop_state.time_fade;
        break;
    case 129:
        val = (u8_t *)&srv->lc->prop_state.time_prolong;
        break;
    case 132:
        val = (u8_t *)&srv->lc->prop_state.time_fade_standby_auto;
        break;
    case 131:
        val = (u8_t *)&srv->lc->prop_state.time_fade_standby_manual;
        break;
    case 142:
        val = (u8_t *)&srv->lc->prop_state.lightness_on;
        break;
    case 141:
        val = (u8_t *)&srv->lc->prop_state.lightness_prolong;
        break;
    case 140:
        val = (u8_t *)&srv->lc->prop_state.lightness_standby;
        break;
    case 145:
        val = (u8_t *)&srv->lc->prop_state.ambient_luxlevel_on;
        break;
    case 144:
        val = (u8_t *)&srv->lc->prop_state.ambient_luxlevel_prolong;
        break;
    case 143:
        val = (u8_t *)&srv->lc->prop_state.ambient_luxlevel_standby;
        break;
    case 137:
        val = (u8_t *)&srv->lc->prop_state.regulator_kiu;
        break;
    case 138:
        val = (u8_t *)&srv->lc->prop_state.regulator_kid;
        break;
    case 135:
        val = (u8_t *)&srv->lc->prop_state.regulator_kpu;
        break;
    case 136:
        val = (u8_t *)&srv->lc->prop_state.regulator_kpd;
        break;
    case 139:
        val = (u8_t *)&srv->lc->prop_state.regulator_accuracy;
        break;
    }

    return val;
}
