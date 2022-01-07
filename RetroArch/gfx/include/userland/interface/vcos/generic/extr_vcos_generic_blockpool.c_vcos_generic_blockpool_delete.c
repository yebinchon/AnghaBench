
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t VCOS_UNSIGNED ;
struct TYPE_9__ {size_t num_subpools; int mutex; int align; int block_data_size; TYPE_2__* subpools; } ;
typedef TYPE_1__ VCOS_BLOCKPOOL_T ;
struct TYPE_10__ {int flags; int * start; TYPE_1__* mem; int num_blocks; } ;
typedef TYPE_2__ VCOS_BLOCKPOOL_SUBPOOL_T ;


 int ASSERT_POOL (TYPE_1__*) ;
 int ASSERT_SUBPOOL (TYPE_2__*) ;
 int VCOS_BLOCKPOOL_SIZE (int ,int ,int ) ;
 int VCOS_BLOCKPOOL_SUBPOOL_FLAG_OWNS_MEM ;
 int VCOS_FUNCTION ;
 int memset (TYPE_1__*,int,int) ;
 int vcos_free (TYPE_1__*) ;
 int vcos_log_trace (char*,int ,TYPE_1__*) ;
 int vcos_mutex_delete (int *) ;

void vcos_generic_blockpool_delete(VCOS_BLOCKPOOL_T *pool)
{
   vcos_log_trace("%s: pool %p", VCOS_FUNCTION, pool);

   if (pool)
   {
      VCOS_UNSIGNED i;

      ASSERT_POOL(pool);
      for (i = 0; i < pool->num_subpools; ++i)
      {
         VCOS_BLOCKPOOL_SUBPOOL_T *subpool = &pool->subpools[i];
         ASSERT_SUBPOOL(subpool);
         if (subpool->mem)
         {

            memset(subpool->mem,
                  0xBE,
                  VCOS_BLOCKPOOL_SIZE(subpool->num_blocks,
                     pool->block_data_size, pool->align));

            if (subpool->flags & VCOS_BLOCKPOOL_SUBPOOL_FLAG_OWNS_MEM)
               vcos_free(subpool->mem);
            subpool->mem = ((void*)0);
            subpool->start = ((void*)0);
         }
      }
      vcos_mutex_delete(&pool->mutex);
      memset(pool, 0xBE, sizeof(VCOS_BLOCKPOOL_T));
   }
}
