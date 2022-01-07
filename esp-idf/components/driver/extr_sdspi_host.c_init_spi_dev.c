
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int spi_host_device_t ;
struct TYPE_4__ {int clock_speed_hz; int queue_size; int spics_io_num; int mode; } ;
typedef TYPE_1__ spi_device_interface_config_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int * handle; } ;


 int GPIO_NUM_NC ;
 int SDSPI_TRANSACTION_COUNT ;
 TYPE_3__* s_slots ;
 int spi_bus_add_device (int ,TYPE_1__*,int **) ;
 int spi_bus_remove_device (scalar_t__) ;
 scalar_t__ spi_handle (int) ;

__attribute__((used)) static esp_err_t init_spi_dev(int slot, int clock_speed_hz)
{
    if (spi_handle(slot)) {

        spi_bus_remove_device(spi_handle(slot));
        s_slots[slot].handle = ((void*)0);
    }
    spi_device_interface_config_t devcfg = {
        .clock_speed_hz = clock_speed_hz,
        .mode = 0,


        .spics_io_num = GPIO_NUM_NC,
        .queue_size = SDSPI_TRANSACTION_COUNT,
    };
    return spi_bus_add_device((spi_host_device_t) slot, &devcfg, &s_slots[slot].handle);
}
