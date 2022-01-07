
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t wrfu(void *ptr, size_t size, size_t nmemb, void *stream)
{
  (void)stream;
  (void)ptr;
  return size * nmemb;
}
