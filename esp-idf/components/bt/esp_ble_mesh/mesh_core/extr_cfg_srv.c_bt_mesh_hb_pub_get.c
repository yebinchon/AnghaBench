
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_hb_pub {int dummy; } ;
struct TYPE_2__ {struct bt_mesh_hb_pub hb_pub; } ;


 TYPE_1__* conf ;

struct bt_mesh_hb_pub *bt_mesh_hb_pub_get(void)
{
    if (!conf) {
        return ((void*)0);
    }

    return &conf->hb_pub;
}
