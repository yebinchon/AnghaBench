
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int kalloc_size (void*) ;

uint32_t
OSMalloc_size(
 void *addr)
{
 return (uint32_t)kalloc_size(addr);
}
