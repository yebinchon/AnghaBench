
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 void* je_calloc (size_t,size_t) ;

__attribute__((used)) static void *
zone_calloc(malloc_zone_t *zone, size_t num, size_t size)
{

 return (je_calloc(num, size));
}
