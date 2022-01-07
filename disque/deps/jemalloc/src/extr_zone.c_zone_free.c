
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 int config_prof ;
 int free (void*) ;
 scalar_t__ ivsalloc (void*,int ) ;
 int je_free (void*) ;

__attribute__((used)) static void
zone_free(malloc_zone_t *zone, void *ptr)
{

 if (ivsalloc(ptr, config_prof) != 0) {
  je_free(ptr);
  return;
 }

 free(ptr);
}
