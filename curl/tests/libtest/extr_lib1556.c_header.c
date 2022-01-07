
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct headerinfo {size_t largest; } ;



__attribute__((used)) static size_t header(void *ptr, size_t size, size_t nmemb, void *stream)
{
  size_t headersize = size * nmemb;
  struct headerinfo *info = (struct headerinfo *)stream;
  (void)ptr;

  if(headersize > info->largest)

    info->largest = headersize;

  return nmemb * size;
}
