
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int uuid128; } ;
struct TYPE_10__ {int member_0; } ;
struct TYPE_12__ {TYPE_3__ uu; TYPE_2__ member_1; int member_0; } ;
typedef TYPE_4__ tBT_UUID ;
struct TYPE_9__ {int handle; } ;
struct TYPE_13__ {int wr_desc_done; int mtu; TYPE_1__ conn; } ;


 int ARRAY_SIZE (TYPE_5__*) ;
 int BLE_MESH_GATTC_APP_UUID_BYTE ;
 int BTA_GATTC_AppRegister (TYPE_4__*,int ) ;
 int BTA_GATTS_AppRegister (TYPE_4__*,int ) ;
 int BTA_GATT_SetLocalMTU (int ) ;
 int GATT_DEF_BLE_MTU_SIZE ;
 int LEN_UUID_128 ;
 int bt_mesh_bta_gattc_cb ;
 int bt_mesh_bta_gatts_cb ;
 TYPE_5__* bt_mesh_gattc_info ;
 int memset (int *,int,int ) ;

void bt_mesh_gatt_init(void)
{
    tBT_UUID app_uuid = {LEN_UUID_128, {0}};

    BTA_GATT_SetLocalMTU(GATT_DEF_BLE_MTU_SIZE);
}
