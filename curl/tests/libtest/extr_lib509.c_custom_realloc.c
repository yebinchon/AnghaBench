
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* realloc ;


 int printf (char*) ;
 scalar_t__ seen_malloc ;
 int seen_realloc ;

void *custom_realloc(void *ptr, size_t size)
{
  if(!seen_realloc && seen_malloc) {
    printf("seen custom_realloc()\n");
    seen_realloc = 1;
  }
  return (realloc)(ptr, size);
}
