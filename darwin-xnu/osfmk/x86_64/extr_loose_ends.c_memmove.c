
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (void const*,void*,size_t) ;

void *
memmove(void *dst, const void *src, size_t ulen)
{
 bcopy(src, dst, ulen);
 return dst;
}
