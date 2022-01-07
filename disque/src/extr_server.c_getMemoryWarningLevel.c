
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxmemory; size_t resident_set_size; } ;


 TYPE_1__ server ;
 size_t zmalloc_used_memory () ;

int getMemoryWarningLevel(void) {
    size_t mem_used = zmalloc_used_memory();

    if (mem_used > server.maxmemory / 100 * 95 &&
        mem_used > server.resident_set_size) return 3;
    if (mem_used > server.maxmemory / 100 * 95) return 2;
    if (mem_used > server.maxmemory / 100 * 75) return 1;
    return 0;
}
