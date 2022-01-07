
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gatt_db; } ;
typedef TYPE_1__ simple_ble_cfg_t ;


 int ble_gatts_add_svcs (int ) ;
 int ble_gatts_count_cfg (int ) ;

int
gatt_svr_init(const simple_ble_cfg_t *config)
{
    int rc;
    rc = ble_gatts_count_cfg(config->gatt_db);
    if (rc != 0) {
        return rc;
    }

    rc = ble_gatts_add_svcs(config->gatt_db);
    if (rc != 0) {
        return rc;
    }

    return 0;
}
