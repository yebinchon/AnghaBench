
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bt_device_features_t ;
struct TYPE_2__ {int readable; int const* features_classic; } ;


 int MAX_FEATURES_CLASSIC_PAGE_COUNT ;
 int assert (int) ;
 TYPE_1__ controller_param ;

__attribute__((used)) static const bt_device_features_t *get_features_classic(int index)
{
    assert(controller_param.readable);
    assert(index < MAX_FEATURES_CLASSIC_PAGE_COUNT);
    return &controller_param.features_classic[index];
}
