
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void memalign_free(void *ptr)
{
   void **p = ((void*)0);
   if (!ptr)
      return;

   p = (void**)ptr;
   free(p[-1]);
}
