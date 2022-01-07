
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_4__ {float counter; } ;
struct bt_mesh_light_lightness_srv {float tt_delta_lightness_actual; TYPE_2__ actual_transition; TYPE_1__* state; } ;
struct TYPE_3__ {scalar_t__ target_lightness_actual; scalar_t__ lightness_actual; } ;


 int transition_time_values (TYPE_2__*,int ,int ) ;

void light_lightness_actual_tt_values(struct bt_mesh_light_lightness_srv *srv,
                                      u8_t trans_time, u8_t delay)
{
    transition_time_values(&srv->actual_transition, trans_time, delay);
    srv->tt_delta_lightness_actual =
        ((float) (srv->state->lightness_actual - srv->state->target_lightness_actual) / srv->actual_transition.counter);
}
