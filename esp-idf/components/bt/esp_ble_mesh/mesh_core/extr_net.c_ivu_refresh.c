
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct k_work {int dummy; } ;
struct TYPE_2__ {unsigned int ivu_duration; int iv_index; int flags; int ivu_timer; } ;


 scalar_t__ BLE_MESH_IVU_HOURS ;
 int BLE_MESH_IVU_IN_PROGRESS ;
 unsigned int BLE_MESH_IVU_MIN_HOURS ;
 int BLE_MESH_IVU_TIMEOUT ;
 int BT_DBG (char*,char*,unsigned int,char*) ;
 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 TYPE_1__ bt_mesh ;
 scalar_t__ bt_mesh_atomic_test_bit (int ,int ) ;
 int bt_mesh_beacon_ivu_initiator (int) ;
 int bt_mesh_net_iv_update (int ,int) ;
 int bt_mesh_store_iv (int) ;
 int k_delayed_work_submit (int *,int ) ;

__attribute__((used)) static void ivu_refresh(struct k_work *work)
{
    bt_mesh.ivu_duration += BLE_MESH_IVU_HOURS;

    BT_DBG("%s for %u hour%s",
           bt_mesh_atomic_test_bit(bt_mesh.flags, BLE_MESH_IVU_IN_PROGRESS) ?
           "IVU in Progress" : "IVU Normal mode",
           bt_mesh.ivu_duration, bt_mesh.ivu_duration == 1U ? "" : "s");

    if (bt_mesh.ivu_duration < BLE_MESH_IVU_MIN_HOURS) {
        if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS)) {
            bt_mesh_store_iv(1);
        }

        k_delayed_work_submit(&bt_mesh.ivu_timer, BLE_MESH_IVU_TIMEOUT);
        return;
    }

    if (bt_mesh_atomic_test_bit(bt_mesh.flags, BLE_MESH_IVU_IN_PROGRESS)) {



        bt_mesh_net_iv_update(bt_mesh.iv_index, 0);
    } else if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS)) {
        bt_mesh_store_iv(1);
    }
}
