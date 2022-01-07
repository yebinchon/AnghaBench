
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t address; size_t size; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int * esp_partition_iterator_t ;


 int ESP_PARTITION_SUBTYPE_ANY ;
 int ESP_PARTITION_TYPE_APP ;
 size_t SPI_FLASH_CACHE2PHYS_FAIL ;
 int abort () ;
 int assert (int) ;
 int * esp_partition_find (int ,int ,int *) ;
 TYPE_1__* esp_partition_get (int *) ;
 int esp_partition_iterator_release (int *) ;
 int * esp_partition_next (int *) ;
 size_t spi_flash_cache2phys (TYPE_1__ const* (*) ()) ;

const esp_partition_t* esp_ota_get_running_partition(void)
{
    static const esp_partition_t *curr_partition = ((void*)0);





    if (curr_partition != ((void*)0)) {
        return curr_partition;
    }



    size_t phys_offs = spi_flash_cache2phys(esp_ota_get_running_partition);

    assert (phys_offs != SPI_FLASH_CACHE2PHYS_FAIL);

    esp_partition_iterator_t it = esp_partition_find(ESP_PARTITION_TYPE_APP,
                                                     ESP_PARTITION_SUBTYPE_ANY,
                                                     ((void*)0));
    assert(it != ((void*)0));

    while (it != ((void*)0)) {
        const esp_partition_t *p = esp_partition_get(it);
        if (p->address <= phys_offs && p->address + p->size > phys_offs) {
            esp_partition_iterator_release(it);
            curr_partition = p;
            return p;
        }
        it = esp_partition_next(it);
    }

    abort();
}
