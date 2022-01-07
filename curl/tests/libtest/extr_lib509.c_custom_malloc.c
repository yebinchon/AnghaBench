
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* malloc ;


 int printf (char*) ;
 scalar_t__ seen_calloc ;
 int seen_malloc ;

void *custom_malloc(size_t size)
{
  if(!seen_malloc && seen_calloc) {
    printf("seen custom_malloc()\n");
    seen_malloc = 1;
  }
  return (malloc)(size);
}
