
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int spi_device_handle_t ;
struct TYPE_2__ {int handle; } ;


 TYPE_1__* s_slots ;

__attribute__((used)) static spi_device_handle_t spi_handle(int slot)
{
    return s_slots[slot].handle;
}
