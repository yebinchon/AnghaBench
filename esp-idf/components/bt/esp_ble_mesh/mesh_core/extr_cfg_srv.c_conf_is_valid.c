
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_cfg_srv {int relay; int beacon; scalar_t__ default_ttl; } ;


 scalar_t__ BLE_MESH_TTL_MAX ;

__attribute__((used)) static bool conf_is_valid(struct bt_mesh_cfg_srv *cfg)
{
    if (cfg->relay > 0x02) {
        return 0;
    }

    if (cfg->beacon > 0x01) {
        return 0;
    }

    if (cfg->default_ttl > BLE_MESH_TTL_MAX) {
        return 0;
    }

    return 1;
}
