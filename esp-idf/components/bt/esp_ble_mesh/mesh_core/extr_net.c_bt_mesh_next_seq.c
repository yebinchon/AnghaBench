
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32_t ;
struct TYPE_2__ {scalar_t__ seq; scalar_t__ iv_index; int flags; } ;


 int BLE_MESH_IVU_IN_PROGRESS ;
 int BLE_MESH_KEY_PRIMARY ;
 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IV_UPDATE_SEQ_LIMIT ;
 TYPE_1__ bt_mesh ;
 int bt_mesh_atomic_test_bit (int ,int ) ;
 int bt_mesh_beacon_ivu_initiator (int) ;
 int bt_mesh_net_iv_update (scalar_t__,int) ;
 int bt_mesh_net_sec_update (int *) ;
 int bt_mesh_store_seq () ;
 scalar_t__ bt_mesh_subnet_get (int ) ;

u32_t bt_mesh_next_seq(void)
{
    u32_t seq = bt_mesh.seq++;

    if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS)) {
        bt_mesh_store_seq();
    }

    if (!bt_mesh_atomic_test_bit(bt_mesh.flags, BLE_MESH_IVU_IN_PROGRESS) &&
            bt_mesh.seq > IV_UPDATE_SEQ_LIMIT &&
            bt_mesh_subnet_get(BLE_MESH_KEY_PRIMARY)) {



        bt_mesh_net_iv_update(bt_mesh.iv_index + 1, 1);
        bt_mesh_net_sec_update(((void*)0));
    }

    return seq;
}
