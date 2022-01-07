
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int __real_free (void*) ;
 int _mem2_free (void*) ;

__attribute__ ((used)) void __wrap_free(void *p)
{
   if (!p)
      return;

   if (((uint32_t)p & 0x10000000) != 0)
      _mem2_free(p);
   else
      __real_free(p);
}
