
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_model {int dummy; } ;


 int light_client_init (struct bt_mesh_model*,int) ;

int bt_mesh_light_hsl_cli_init(struct bt_mesh_model *model, bool primary)
{
    return light_client_init(model, primary);
}
