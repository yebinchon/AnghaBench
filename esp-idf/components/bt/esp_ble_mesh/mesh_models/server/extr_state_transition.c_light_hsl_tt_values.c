
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_4__ {float counter; } ;
struct bt_mesh_light_hsl_srv {float tt_delta_lightness; float tt_delta_hue; float tt_delta_saturation; TYPE_2__ transition; TYPE_1__* state; } ;
struct TYPE_3__ {scalar_t__ target_saturation; scalar_t__ saturation; scalar_t__ target_hue; scalar_t__ hue; scalar_t__ target_lightness; scalar_t__ lightness; } ;


 int transition_time_values (TYPE_2__*,int ,int ) ;

void light_hsl_tt_values(struct bt_mesh_light_hsl_srv *srv,
                         u8_t trans_time, u8_t delay)
{
    transition_time_values(&srv->transition, trans_time, delay);
    srv->tt_delta_lightness =
        ((float) (srv->state->lightness - srv->state->target_lightness) / srv->transition.counter);
    srv->tt_delta_hue =
        ((float) (srv->state->hue - srv->state->target_hue) / srv->transition.counter);
    srv->tt_delta_saturation =
        ((float) (srv->state->saturation - srv->state->target_saturation) / srv->transition.counter);
}
