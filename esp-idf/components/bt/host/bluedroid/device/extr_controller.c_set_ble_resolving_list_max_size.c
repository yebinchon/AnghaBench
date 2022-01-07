
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ble_resolving_list_max_size; int ble_supported; int readable; } ;


 int assert (int ) ;
 TYPE_1__ controller_param ;

__attribute__((used)) static void set_ble_resolving_list_max_size(int resolving_list_max_size)
{
    assert(controller_param.readable);
    assert(controller_param.ble_supported);
    controller_param.ble_resolving_list_max_size = resolving_list_max_size;
}
