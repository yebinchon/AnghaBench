
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int free ;


 int printf (char*) ;
 int seen_free ;
 scalar_t__ seen_realloc ;

void custom_free(void *ptr)
{
  if(!seen_free && seen_realloc) {
    printf("seen custom_free()\n");
    seen_free = 1;
  }
  (free)(ptr);
}
