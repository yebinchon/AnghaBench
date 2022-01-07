
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bt_device_features_t ;
struct TYPE_2__ {int const features_ble; int ble_supported; int readable; } ;


 int assert (int ) ;
 TYPE_1__ controller_param ;

__attribute__((used)) static const bt_device_features_t *get_features_ble(void)
{
    assert(controller_param.readable);
    assert(controller_param.ble_supported);
    return &controller_param.features_ble;
}
