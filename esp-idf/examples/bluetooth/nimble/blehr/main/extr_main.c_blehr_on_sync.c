
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int INFO ;
 int MODLOG_DFLT (int ,char*) ;
 int assert (int) ;
 int ble_hs_id_copy_addr (int ,int *,int *) ;
 int ble_hs_id_infer_auto (int ,int *) ;
 int blehr_addr_type ;
 int blehr_advertise () ;
 int print_addr (int *) ;

__attribute__((used)) static void
blehr_on_sync(void)
{
    int rc;

    rc = ble_hs_id_infer_auto(0, &blehr_addr_type);
    assert(rc == 0);

    uint8_t addr_val[6] = {0};
    rc = ble_hs_id_copy_addr(blehr_addr_type, addr_val, ((void*)0));

    MODLOG_DFLT(INFO, "Device Address: ");
    print_addr(addr_val);
    MODLOG_DFLT(INFO, "\n");


    blehr_advertise();
}
