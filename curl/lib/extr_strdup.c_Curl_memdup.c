
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int memcpy (void*,void const*,size_t) ;

void *Curl_memdup(const void *src, size_t length)
{
  void *buffer = malloc(length);
  if(!buffer)
    return ((void*)0);

  memcpy(buffer, src, length);

  return buffer;
}
