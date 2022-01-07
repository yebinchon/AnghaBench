
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_adv {int dummy; } ;


 struct bt_mesh_adv* adv_pool ;

__attribute__((used)) static struct bt_mesh_adv *adv_alloc(int id)
{
    return &adv_pool[id];
}
