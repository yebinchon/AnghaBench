
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_SET_LOCAL_PRIVACY_CBACK ;


 int BTA_DmBleConfigLocalPrivacy (int,int *) ;

__attribute__((used)) static void btc_ble_config_local_privacy(bool privacy_enable, tBTA_SET_LOCAL_PRIVACY_CBACK *set_local_privacy_cback)
{
    BTA_DmBleConfigLocalPrivacy(privacy_enable, set_local_privacy_cback);
}
