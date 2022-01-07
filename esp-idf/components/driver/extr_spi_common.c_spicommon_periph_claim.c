
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t spi_host_device_t ;
struct TYPE_2__ {int module; } ;


 int ESP_EARLY_LOGE (int ,char*,size_t,char const*) ;
 int SPI_TAG ;
 int atomic_compare_exchange_strong (int *,int*,int) ;
 int periph_module_enable (int ) ;
 char const** spi_claiming_func ;
 int * spi_periph_claimed ;
 TYPE_1__* spi_periph_signal ;

bool spicommon_periph_claim(spi_host_device_t host, const char* source)
{
    bool false_var = 0;
    bool ret = atomic_compare_exchange_strong(&spi_periph_claimed[host], &false_var, 1);
    if (ret) {
        spi_claiming_func[host] = source;
        periph_module_enable(spi_periph_signal[host].module);
    } else {
        ESP_EARLY_LOGE(SPI_TAG, "SPI%d already claimed by %s.", host+1, spi_claiming_func[host]);
    }
    return ret;
}
