
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t malloc_alwaysinternal_limit ;

void heap_caps_malloc_extmem_enable(size_t limit)
{
    malloc_alwaysinternal_limit=limit;
}
