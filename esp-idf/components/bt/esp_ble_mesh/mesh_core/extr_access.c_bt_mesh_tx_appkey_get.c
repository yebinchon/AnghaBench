
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct bt_mesh_app_key {int dummy; } ;


 scalar_t__ FAST_PROV ;
 scalar_t__ NODE ;
 scalar_t__ PROVISIONER ;
 struct bt_mesh_app_key* bt_mesh_app_key_find (int ) ;
 scalar_t__ bt_mesh_is_provisioned () ;
 scalar_t__ bt_mesh_is_provisioner_en () ;
 struct bt_mesh_app_key* fast_prov_app_key_find (int ,int ) ;
 struct bt_mesh_app_key* provisioner_app_key_find (int ) ;

struct bt_mesh_app_key *bt_mesh_tx_appkey_get(u8_t role, u16_t app_idx, u16_t net_idx)
{
    struct bt_mesh_app_key *key = ((void*)0);
    return key;
}
