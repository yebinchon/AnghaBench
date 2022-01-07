
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcpy (void*,void const*,size_t) ;

__attribute__((used)) static void *
mempcpy (void *dest, const void *src, size_t n)
{
  return (void *) ((char *) memcpy (dest, src, n) + n);
}
