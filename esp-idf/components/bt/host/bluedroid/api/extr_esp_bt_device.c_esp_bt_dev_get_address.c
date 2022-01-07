
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_1__* (* get_address ) () ;} ;
struct TYPE_3__ {int const* address; } ;


 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 TYPE_2__* controller_get_interface () ;
 scalar_t__ esp_bluedroid_get_status () ;
 TYPE_1__* stub1 () ;

const uint8_t *esp_bt_dev_get_address(void)
{
    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
 return ((void*)0);
    }
    return controller_get_interface()->get_address()->address;
}
