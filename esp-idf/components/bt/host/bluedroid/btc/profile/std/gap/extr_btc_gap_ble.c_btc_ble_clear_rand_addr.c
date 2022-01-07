
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTA_DmClearRandAddress () ;

__attribute__((used)) static void btc_ble_clear_rand_addr (void)
{
    BTA_DmClearRandAddress();
}
