
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int * base_mem; int * mem; } ;
typedef TYPE_1__ T3Memory ;


 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;

T3Memory * T3MemoryInit(u32 size)
{
   T3Memory * mem;

   if ((mem = (T3Memory *) calloc(1, sizeof(T3Memory))) == ((void*)0))
      return ((void*)0);

   if ((mem->base_mem = (u8 *) calloc(size, sizeof(u8))) == ((void*)0))
   {
      free(mem);
      return ((void*)0);
   }

   mem->mem = mem->base_mem + size;

   return mem;
}
