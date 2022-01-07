
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct TYPE_3__ {scalar_t__ addr; int * uuid; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BT_DBG (char*,scalar_t__,...) ;
 int BT_WARN (char*,scalar_t__) ;
 int bt_hex (int *,int) ;
 TYPE_1__* labels ;

u8_t *bt_mesh_label_uuid_get(u16_t addr)
{
    int i;

    BT_DBG("addr 0x%04x", addr);

    for (i = 0; i < ARRAY_SIZE(labels); i++) {
        if (labels[i].addr == addr) {
            BT_DBG("Found Label UUID for 0x%04x: %s", addr,
                   bt_hex(labels[i].uuid, 16));
            return labels[i].uuid;
        }
    }

    BT_WARN("No matching Label UUID for 0x%04x", addr);

    return ((void*)0);
}
