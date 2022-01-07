
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BD_ADDR ;


 int BTA_DmBleDisconnect (int ) ;

__attribute__((used)) static void btc_ble_disconnect(BD_ADDR bd_addr)
{
    BTA_DmBleDisconnect(bd_addr);
}
