
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unbind_data {int store; int app_idx; } ;
struct bt_mesh_model {int dummy; } ;
struct bt_mesh_elem {int dummy; } ;


 int mod_unbind (struct bt_mesh_model*,int ,int ) ;

__attribute__((used)) static void _mod_unbind(struct bt_mesh_model *mod, struct bt_mesh_elem *elem,
                        bool vnd, bool primary, void *user_data)
{
    struct unbind_data *data = user_data;

    mod_unbind(mod, data->app_idx, data->store);
}
