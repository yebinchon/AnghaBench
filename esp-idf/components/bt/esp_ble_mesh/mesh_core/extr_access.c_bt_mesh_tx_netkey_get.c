
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct bt_mesh_subnet {int dummy; } ;


 scalar_t__ FAST_PROV ;
 scalar_t__ NODE ;
 scalar_t__ PROVISIONER ;
 scalar_t__ bt_mesh_is_provisioned () ;
 scalar_t__ bt_mesh_is_provisioner_en () ;
 struct bt_mesh_subnet* bt_mesh_subnet_get (int ) ;
 struct bt_mesh_subnet* fast_prov_subnet_get (int ) ;
 struct bt_mesh_subnet* provisioner_subnet_get (int ) ;

struct bt_mesh_subnet *bt_mesh_tx_netkey_get(u8_t role, u16_t net_idx)
{
    struct bt_mesh_subnet *sub = ((void*)0);
    return sub;
}
