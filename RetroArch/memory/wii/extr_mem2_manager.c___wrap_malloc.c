
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __real_malloc (size_t) ;
 void* _mem2_malloc (size_t) ;

__attribute__ ((used)) void *__wrap_malloc(size_t size)
{
   void *p = __real_malloc(size);
   if (p != 0)
      return p;
   return _mem2_malloc(size);
}
