
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mixed_mode; } ;
struct TYPE_4__ {TYPE_1__ ble_ctr_cb; } ;
typedef int BOOLEAN ;


 TYPE_2__ btm_cb ;

void BTM_BleEnableMixedPrivacyMode(BOOLEAN mixed_on)
{


    btm_cb.ble_ctr_cb.mixed_mode = mixed_on;



}
