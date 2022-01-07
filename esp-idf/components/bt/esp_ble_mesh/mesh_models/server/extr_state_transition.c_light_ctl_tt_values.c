
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_4__ {float counter; } ;
struct bt_mesh_light_ctl_srv {float tt_delta_lightness; float tt_delta_temperature; float tt_delta_delta_uv; TYPE_2__ transition; TYPE_1__* state; } ;
struct TYPE_3__ {scalar_t__ target_delta_uv; scalar_t__ delta_uv; scalar_t__ target_temperature; scalar_t__ temperature; scalar_t__ target_lightness; scalar_t__ lightness; } ;


 int transition_time_values (TYPE_2__*,int ,int ) ;

void light_ctl_tt_values(struct bt_mesh_light_ctl_srv *srv,
                         u8_t trans_time, u8_t delay)
{
    transition_time_values(&srv->transition, trans_time, delay);
    srv->tt_delta_lightness =
        ((float) (srv->state->lightness - srv->state->target_lightness) / srv->transition.counter);
    srv->tt_delta_temperature =
        ((float) (srv->state->temperature - srv->state->target_temperature) / srv->transition.counter);
    srv->tt_delta_delta_uv =
        ((float) (srv->state->delta_uv - srv->state->target_delta_uv) / srv->transition.counter);
}
