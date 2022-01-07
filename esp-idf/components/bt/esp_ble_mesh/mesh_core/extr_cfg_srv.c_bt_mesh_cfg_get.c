
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_cfg_srv {int dummy; } ;


 struct bt_mesh_cfg_srv* conf ;

struct bt_mesh_cfg_srv *bt_mesh_cfg_get(void)
{
    return conf;
}
