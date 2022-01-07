
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t CURL_READFUNC_ABORT ;
 scalar_t__ ferror (int *) ;
 size_t fread (void*,size_t,size_t,int *) ;

__attribute__((used)) static size_t readfunc(void *ptr, size_t size, size_t nmemb, void *stream)
{
  FILE *f = (FILE *)stream;
  size_t n;

  if(ferror(f))
    return CURL_READFUNC_ABORT;

  n = fread(ptr, size, nmemb, f) * size;

  return n;
}
