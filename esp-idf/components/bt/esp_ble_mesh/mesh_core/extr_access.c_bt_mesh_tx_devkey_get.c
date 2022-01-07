
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct TYPE_2__ {scalar_t__* dev_key; } ;


 scalar_t__ FAST_PROV ;
 scalar_t__ NODE ;
 scalar_t__ PROVISIONER ;
 TYPE_1__ bt_mesh ;
 scalar_t__ bt_mesh_is_provisioned () ;
 scalar_t__ bt_mesh_is_provisioner_en () ;
 scalar_t__* fast_prov_dev_key_get (int ) ;
 scalar_t__* provisioner_dev_key_get (int ) ;

const u8_t *bt_mesh_tx_devkey_get(u8_t role, u16_t dst)
{
    const u8_t *key = ((void*)0);
    return key;
}
