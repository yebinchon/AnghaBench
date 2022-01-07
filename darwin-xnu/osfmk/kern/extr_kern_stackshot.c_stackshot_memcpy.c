
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (void*,void const*,size_t) ;
 scalar_t__ panic_stackshot ;

void
stackshot_memcpy(void *dst, const void *src, size_t len)
{
  memcpy(dst, src, len);
}
