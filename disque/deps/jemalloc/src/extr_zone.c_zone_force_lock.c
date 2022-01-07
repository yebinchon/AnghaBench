
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 scalar_t__ isthreaded ;
 int jemalloc_prefork () ;

__attribute__((used)) static void
zone_force_lock(malloc_zone_t *zone)
{

 if (isthreaded)
  jemalloc_prefork();
}
