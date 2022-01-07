
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_alloced; } ;


 scalar_t__ CACHE_BLOCKSIZE ;
 TYPE_1__* s_ram_descriptor ;
 int s_ramblockcnt ;

size_t esp_himem_get_free_size(void)
{
    size_t ret=0;
    for (int i = 0; i < s_ramblockcnt; i++) {
        if (!s_ram_descriptor[i].is_alloced) ret+=CACHE_BLOCKSIZE;
    }
    return ret;
}
