
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ privacy_mode; } ;
struct TYPE_4__ {TYPE_1__ ble_ctr_cb; } ;
typedef int BOOLEAN ;


 scalar_t__ BTM_PRIVACY_NONE ;
 TYPE_2__ btm_cb ;

BOOLEAN BTM_BleLocalPrivacyEnabled(void)
{

    return (btm_cb.ble_ctr_cb.privacy_mode != BTM_PRIVACY_NONE);



}
