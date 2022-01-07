
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_3__ {int frnd; } ;


 int BLE_MESH_FRIEND_NOT_SUPPORTED ;
 int BT_DBG (char*,TYPE_1__*,int ) ;
 TYPE_1__* conf ;

u8_t bt_mesh_friend_get(void)
{
    if (conf) {
        BT_DBG("conf %p conf->frnd 0x%02x", conf, conf->frnd);
        return conf->frnd;
    }

    return BLE_MESH_FRIEND_NOT_SUPPORTED;
}
