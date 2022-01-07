
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *
Curl_memrchr(const void *s, int c, size_t n)
{
  if(n > 0) {
    const unsigned char *p = s;
    const unsigned char *q = s;

    p += n - 1;

    while(p >= q) {
      if(*p == (unsigned char)c)
        return (void *)p;
      p--;
    }
  }
  return ((void*)0);
}
