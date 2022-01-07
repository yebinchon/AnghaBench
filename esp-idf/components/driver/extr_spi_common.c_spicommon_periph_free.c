
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t spi_host_device_t ;
struct TYPE_2__ {int module; } ;


 int atomic_compare_exchange_strong (int *,int*,int) ;
 int periph_module_disable (int ) ;
 int * spi_periph_claimed ;
 TYPE_1__* spi_periph_signal ;

bool spicommon_periph_free(spi_host_device_t host)
{
    bool true_var = 1;
    bool ret = atomic_compare_exchange_strong(&spi_periph_claimed[host], &true_var, 0);
    if (ret) periph_module_disable(spi_periph_signal[host].module);
    return ret;
}
