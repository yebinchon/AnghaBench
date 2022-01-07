
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_4__ {float counter; } ;
struct TYPE_3__ {scalar_t__ target_level; scalar_t__ level; } ;
struct bt_mesh_gen_level_srv {float tt_delta_level; TYPE_2__ transition; TYPE_1__ state; } ;


 int transition_time_values (TYPE_2__*,int ,int ) ;

void generic_level_tt_values(struct bt_mesh_gen_level_srv *srv,
                             u8_t trans_time, u8_t delay)
{
    transition_time_values(&srv->transition, trans_time, delay);
    srv->tt_delta_level =
        ((float) (srv->state.level - srv->state.target_level) / srv->transition.counter);
}
