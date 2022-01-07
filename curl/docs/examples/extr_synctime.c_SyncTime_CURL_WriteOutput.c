
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fwrite (void*,size_t,size_t,void*) ;

size_t SyncTime_CURL_WriteOutput(void *ptr, size_t size, size_t nmemb,
                                 void *stream)
{
  fwrite(ptr, size, nmemb, stream);
  return (nmemb*size);
}
