
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct bt_mesh_gen_onoff_srv {int transition; } ;


 void transition_time_values (int *,int ,int ) ;

void generic_onoff_tt_values(struct bt_mesh_gen_onoff_srv *srv,
                             u8_t trans_time, u8_t delay)
{
    return transition_time_values(&srv->transition, trans_time, delay);
}
