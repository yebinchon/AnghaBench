
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_BLOCKSIZE ;
 int SPIRAM_BANKSWITCH_RESERVE ;
 size_t esp_spiram_get_size () ;

size_t esp_himem_get_phys_size(void)
{
    int paddr_start = (4096 * 1024) - (CACHE_BLOCKSIZE * SPIRAM_BANKSWITCH_RESERVE);
    return esp_spiram_get_size()-paddr_start;
}
