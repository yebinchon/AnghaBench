
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; TYPE_1__* host; } ;
typedef TYPE_2__ spi_device_t ;
struct TYPE_4__ {int intr; int acquire_cs; } ;


 int NO_CS ;
 int atomic_load (int *) ;
 int esp_intr_enable (int ) ;

__attribute__((used)) static inline void spi_isr_invoke(spi_device_t *dev)
{
    int acquire_cs = atomic_load(&dev->host->acquire_cs);
    if (acquire_cs == dev->id || acquire_cs == NO_CS) {
        esp_intr_enable(dev->host->intr);
    }

}
