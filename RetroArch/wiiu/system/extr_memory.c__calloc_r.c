
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;


 void* _malloc_r (struct _reent*,size_t) ;
 int memset (void*,int ,size_t) ;

void* _calloc_r(struct _reent *r, size_t num, size_t size)
{
   void *ptr = _malloc_r(r, num*size);

   if(ptr)
      memset(ptr, 0, num*size);

   return ptr;
}
