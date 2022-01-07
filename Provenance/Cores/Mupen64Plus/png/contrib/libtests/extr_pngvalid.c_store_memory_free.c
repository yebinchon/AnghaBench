
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ max; int current; int store; int mark; } ;
typedef TYPE_1__ store_pool ;
struct TYPE_7__ {scalar_t__ mark; scalar_t__ size; TYPE_1__* pool; } ;
typedef TYPE_2__ store_memory ;
typedef int png_const_structp ;
typedef scalar_t__ png_bytep ;
typedef scalar_t__ png_alloc_size_t ;


 int free (TYPE_2__*) ;
 scalar_t__ memcmp (scalar_t__,int ,int) ;
 int store_pool_error (int ,int ,char*) ;

__attribute__((used)) static void
store_memory_free(png_const_structp pp, store_pool *pool, store_memory *memory)
{




   if (memory->pool != pool)
      store_pool_error(pool->store, pp, "memory corrupted (pool)");

   else if (memcmp(memory->mark, pool->mark, sizeof memory->mark) != 0)
      store_pool_error(pool->store, pp, "memory corrupted (start)");


   else
   {
      png_alloc_size_t cb = memory->size;

      if (cb > pool->max)
         store_pool_error(pool->store, pp, "memory corrupted (size)");

      else if (memcmp((png_bytep)(memory+1)+cb, pool->mark, sizeof pool->mark)
         != 0)
         store_pool_error(pool->store, pp, "memory corrupted (end)");


      else
         {
         pool->current -= cb;
         free(memory);
         }
   }
}
