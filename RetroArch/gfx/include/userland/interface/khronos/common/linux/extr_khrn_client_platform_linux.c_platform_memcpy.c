
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,size_t) ;

void platform_memcpy(void * aTrg, const void * aSrc, size_t aLength)
{
   memcpy(aTrg, aSrc, aLength);
}
