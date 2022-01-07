
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTA_VendorCleanup () ;
 int bte_main_disable () ;
 int osi_deinit () ;

void bte_main_shutdown(void)
{

    BTA_VendorCleanup();

    bte_main_disable();

    osi_deinit();
}
