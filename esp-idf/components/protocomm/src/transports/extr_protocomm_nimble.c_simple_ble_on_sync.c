
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGE (int ,char*,...) ;
 int TAG ;
 int ble_hs_id_infer_auto (int ,int *) ;
 int ble_hs_util_ensure_addr (int ) ;
 int own_addr_type ;
 int simple_ble_advertise () ;

__attribute__((used)) static void
simple_ble_on_sync(void)
{
    int rc;

    rc = ble_hs_util_ensure_addr(0);
    if (rc != 0) {
        ESP_LOGE(TAG, "Error loading address");
        return;
    }


    rc = ble_hs_id_infer_auto(0, &own_addr_type);
    if (rc != 0) {
        ESP_LOGE(TAG, "error determining address type; rc=%d\n", rc);
        return;
    }


    simple_ble_advertise();
}
