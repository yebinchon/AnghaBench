
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ERROR ;
 int INFO ;
 int MODLOG_DFLT (int ,char*,...) ;
 int assert (int) ;
 int ble_hs_id_copy_addr (int ,int *,int *) ;
 int ble_hs_id_infer_auto (int ,int *) ;
 int ble_hs_util_ensure_addr (int ) ;
 int bleprph_advertise () ;
 int own_addr_type ;
 int print_addr (int *) ;

__attribute__((used)) static void
bleprph_on_sync(void)
{
    int rc;

    rc = ble_hs_util_ensure_addr(0);
    assert(rc == 0);


    rc = ble_hs_id_infer_auto(0, &own_addr_type);
    if (rc != 0) {
        MODLOG_DFLT(ERROR, "error determining address type; rc=%d\n", rc);
        return;
    }


    uint8_t addr_val[6] = {0};
    rc = ble_hs_id_copy_addr(own_addr_type, addr_val, ((void*)0));

    MODLOG_DFLT(INFO, "Device Address: ");
    print_addr(addr_val);
    MODLOG_DFLT(INFO, "\n");

    bleprph_advertise();
}
