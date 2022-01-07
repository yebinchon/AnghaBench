
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* realloc (void*,size_t) ;

void *Curl_saferealloc(void *ptr, size_t size)
{
  void *datap = realloc(ptr, size);
  if(size && !datap)

    free(ptr);
  return datap;
}
