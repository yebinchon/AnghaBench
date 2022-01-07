
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_app_key {int dummy; } ;
struct TYPE_2__ {struct bt_mesh_app_key* app_keys; struct bt_mesh_app_key** p_app_keys; } ;


 size_t ARRAY_SIZE (struct bt_mesh_app_key*) ;
 TYPE_1__ bt_mesh ;
 scalar_t__ bt_mesh_is_provisioned () ;
 scalar_t__ bt_mesh_is_provisioner_en () ;

struct bt_mesh_app_key *bt_mesh_rx_appkey_get(size_t index)
{
    struct bt_mesh_app_key *key = ((void*)0);
    return key;
}
