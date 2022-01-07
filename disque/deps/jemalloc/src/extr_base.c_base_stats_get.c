
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 size_t base_allocated ;
 size_t base_mapped ;
 int base_mtx ;
 size_t base_resident ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;

void
base_stats_get(size_t *allocated, size_t *resident, size_t *mapped)
{

 malloc_mutex_lock(&base_mtx);
 assert(base_allocated <= base_resident);
 assert(base_resident <= base_mapped);
 *allocated = base_allocated;
 *resident = base_resident;
 *mapped = base_mapped;
 malloc_mutex_unlock(&base_mtx);
}
