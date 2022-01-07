
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* calloc ;


 int printf (char*) ;
 int seen_calloc ;

void *custom_calloc(size_t nmemb, size_t size)
{
  if(!seen_calloc) {
    printf("seen custom_calloc()\n");
    seen_calloc = 1;
  }
  return (calloc)(nmemb, size);
}
