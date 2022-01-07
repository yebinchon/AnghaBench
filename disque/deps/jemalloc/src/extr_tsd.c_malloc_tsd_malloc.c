
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHELINE_CEILING (size_t) ;
 void* a0malloc (int ) ;

void *
malloc_tsd_malloc(size_t size)
{

 return (a0malloc(CACHELINE_CEILING(size)));
}
