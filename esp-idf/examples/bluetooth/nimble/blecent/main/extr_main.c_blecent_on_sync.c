
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int ble_hs_util_ensure_addr (int ) ;
 int blecent_scan () ;

__attribute__((used)) static void
blecent_on_sync(void)
{
    int rc;


    rc = ble_hs_util_ensure_addr(0);
    assert(rc == 0);


    blecent_scan();
}
