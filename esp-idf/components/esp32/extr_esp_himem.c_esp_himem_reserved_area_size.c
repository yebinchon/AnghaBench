
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CACHE_BLOCKSIZE ;
 size_t SPIRAM_BANKSWITCH_RESERVE ;

size_t esp_himem_reserved_area_size(void) {
    return CACHE_BLOCKSIZE * SPIRAM_BANKSWITCH_RESERVE;
}
