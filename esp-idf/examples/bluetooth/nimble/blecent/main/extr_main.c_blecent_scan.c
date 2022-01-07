
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ble_gap_disc_params {int filter_duplicates; int passive; scalar_t__ limited; scalar_t__ filter_policy; scalar_t__ window; scalar_t__ itvl; } ;


 int BLE_HS_FOREVER ;
 int ERROR ;
 int MODLOG_DFLT (int ,char*,int) ;
 int ble_gap_disc (int ,int ,struct ble_gap_disc_params*,int ,int *) ;
 int ble_hs_id_infer_auto (int ,int *) ;
 int blecent_gap_event ;

__attribute__((used)) static void
blecent_scan(void)
{
    uint8_t own_addr_type;
    struct ble_gap_disc_params disc_params;
    int rc;


    rc = ble_hs_id_infer_auto(0, &own_addr_type);
    if (rc != 0) {
        MODLOG_DFLT(ERROR, "error determining address type; rc=%d\n", rc);
        return;
    }




    disc_params.filter_duplicates = 1;





    disc_params.passive = 1;


    disc_params.itvl = 0;
    disc_params.window = 0;
    disc_params.filter_policy = 0;
    disc_params.limited = 0;

    rc = ble_gap_disc(own_addr_type, BLE_HS_FOREVER, &disc_params,
                      blecent_gap_event, ((void*)0));
    if (rc != 0) {
        MODLOG_DFLT(ERROR, "Error initiating GAP discovery procedure; rc=%d\n",
                    rc);
    }
}
