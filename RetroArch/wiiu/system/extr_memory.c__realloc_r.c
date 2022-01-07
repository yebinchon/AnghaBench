
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;


 int _free_r (struct _reent*,void*) ;
 void* _malloc_r (struct _reent*,size_t) ;
 size_t _malloc_usable_size_r (struct _reent*,void*) ;
 int memcpy (void*,void*,size_t) ;

void * _realloc_r(struct _reent *r, void *ptr, size_t size)
{
   void *realloc_ptr = ((void*)0);
   if (!ptr)
      return _malloc_r(r, size);

   if (_malloc_usable_size_r(r, ptr) >= size)
      return ptr;

   realloc_ptr = _malloc_r(r, size);

   if(!realloc_ptr)
      return ((void*)0);

   memcpy(realloc_ptr, ptr, _malloc_usable_size_r(r, ptr));
   _free_r(r, ptr);

   return realloc_ptr;
}
