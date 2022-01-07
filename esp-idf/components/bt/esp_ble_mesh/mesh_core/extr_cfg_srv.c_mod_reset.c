
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_model {int dummy; } ;
struct bt_mesh_elem {int dummy; } ;


 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 int bt_mesh_store_mod_sub (struct bt_mesh_model*) ;
 size_t mod_sub_list_clear (struct bt_mesh_model*) ;

__attribute__((used)) static void mod_reset(struct bt_mesh_model *mod, struct bt_mesh_elem *elem,
                      bool vnd, bool primary, void *user_data)
{
    size_t clear_count;







    clear_count = mod_sub_list_clear(mod);

    if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS) && clear_count) {
        bt_mesh_store_mod_sub(mod);
    }
}
