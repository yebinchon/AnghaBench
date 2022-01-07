
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (void*,void*,size_t) ;

int
copywithin(void *src, void *dst, size_t count)
{
 bcopy(src,dst,count);
 return 0;
}
