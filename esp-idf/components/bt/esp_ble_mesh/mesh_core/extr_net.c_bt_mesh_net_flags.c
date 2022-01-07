
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct bt_mesh_subnet {scalar_t__ kr_flag; } ;
struct TYPE_2__ {int flags; } ;


 int BLE_MESH_IVU_IN_PROGRESS ;
 int BLE_MESH_NET_FLAG_IVU ;
 int BLE_MESH_NET_FLAG_KR ;
 TYPE_1__ bt_mesh ;
 scalar_t__ bt_mesh_atomic_test_bit (int ,int ) ;

u8_t bt_mesh_net_flags(struct bt_mesh_subnet *sub)
{
    u8_t flags = 0x00;

    if (sub && sub->kr_flag) {
        flags |= BLE_MESH_NET_FLAG_KR;
    }

    if (bt_mesh_atomic_test_bit(bt_mesh.flags, BLE_MESH_IVU_IN_PROGRESS)) {
        flags |= BLE_MESH_NET_FLAG_IVU;
    }

    return flags;
}
