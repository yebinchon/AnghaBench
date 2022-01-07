
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __real_memalign (size_t,size_t) ;
 void* _mem2_memalign (size_t,size_t) ;

__attribute__ ((used)) void *__wrap_memalign(size_t a, size_t size)
{
   void *p = __real_memalign(a, size);
   if (p != 0)
      return p;
   return _mem2_memalign(a, size);
}
