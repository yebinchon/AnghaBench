
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 int config_prof ;
 scalar_t__ ivsalloc (void*,int ) ;
 void* je_realloc (void*,size_t) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *
zone_realloc(malloc_zone_t *zone, void *ptr, size_t size)
{

 if (ivsalloc(ptr, config_prof) != 0)
  return (je_realloc(ptr, size));

 return (realloc(ptr, size));
}
