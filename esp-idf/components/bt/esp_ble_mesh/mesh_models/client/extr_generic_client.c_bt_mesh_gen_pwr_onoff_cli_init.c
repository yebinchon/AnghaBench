
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_model {int dummy; } ;


 int generic_client_init (struct bt_mesh_model*,int) ;

int bt_mesh_gen_pwr_onoff_cli_init(struct bt_mesh_model *model, bool primary)
{
    return generic_client_init(model, primary);
}
