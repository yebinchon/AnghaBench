
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ curlx_uztoul (size_t) ;
 int realHeaderSize ;

size_t WriteHeader(void *ptr, size_t size, size_t nmemb, void *stream)
{
  (void)ptr;
  (void)stream;

  realHeaderSize += curlx_uztoul(size * nmemb);

  return nmemb * size;
}
