
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t fwrite (void*,size_t,size_t,int *) ;

size_t write_file(void *ptr, size_t size, size_t nmemb, FILE *stream)
{

  return fwrite(ptr, size, nmemb, stream);
}
