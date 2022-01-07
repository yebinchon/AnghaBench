
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* features_classic; int readable; } ;
struct TYPE_3__ {int as_array; } ;


 int HCI_LMP_INQ_RSSI_SUPPORTED (int ) ;
 int assert (int ) ;
 TYPE_2__ controller_param ;

__attribute__((used)) static bool supports_rssi_with_inquiry_results(void)
{
    assert(controller_param.readable);
    return HCI_LMP_INQ_RSSI_SUPPORTED(controller_param.features_classic[0].as_array);
}
