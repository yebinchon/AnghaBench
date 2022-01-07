
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,size_t) ;

bool vec_size(void **target, size_t elem_size, int count)
{
   const int seg = 4;

   if (--count % seg == 0)
   {
      void *resized = realloc(*target, elem_size * (count + seg));
      if (!resized)
         return 0;
      *target = resized;
   }

   return 1;
}
