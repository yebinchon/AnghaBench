
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int as_array; } ;
struct TYPE_4__ {TYPE_1__ features_ble; int ble_supported; int readable; } ;


 int HCI_LE_CONN_PARAM_REQ_SUPPORTED (int ) ;
 int assert (int ) ;
 TYPE_2__ controller_param ;

__attribute__((used)) static bool supports_ble_connection_parameters_request(void)
{
    assert(controller_param.readable);
    assert(controller_param.ble_supported);
    return HCI_LE_CONN_PARAM_REQ_SUPPORTED(controller_param.features_ble.as_array);
}
