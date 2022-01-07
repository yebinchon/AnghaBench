
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int mutex; int block_data_size; } ;
typedef TYPE_2__ VCOS_BLOCKPOOL_T ;
struct TYPE_9__ {scalar_t__ available_blocks; unsigned int num_blocks; int flags; int * start; int * mem; TYPE_4__* free_list; TYPE_2__* owner; } ;
typedef TYPE_3__ VCOS_BLOCKPOOL_SUBPOOL_T ;
struct TYPE_7__ {TYPE_4__* next; TYPE_3__* subpool; } ;
struct TYPE_10__ {TYPE_1__ owner; } ;
typedef TYPE_4__ VCOS_BLOCKPOOL_HEADER_T ;


 int ASSERT_POOL (TYPE_2__*) ;
 int ASSERT_SUBPOOL (TYPE_3__*) ;
 int VCOS_BLOCKPOOL_DEBUG_LOG (char*,void*,...) ;
 scalar_t__ VCOS_BLOCKPOOL_OVERWRITE_ON_FREE ;
 int VCOS_BLOCKPOOL_SUBPOOL_FLAG_EXTENSION ;
 int VCOS_FUNCTION ;
 int memset (void*,int,int ) ;
 int vcos_assert (int) ;
 int vcos_free (int *) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

void vcos_generic_blockpool_free(void *block)
{
   VCOS_BLOCKPOOL_DEBUG_LOG("block %p", block);
   if (block)
   {
      VCOS_BLOCKPOOL_HEADER_T* hdr = (VCOS_BLOCKPOOL_HEADER_T*) block - 1;
      VCOS_BLOCKPOOL_SUBPOOL_T *subpool = hdr->owner.subpool;
      VCOS_BLOCKPOOL_T *pool = ((void*)0);

      ASSERT_SUBPOOL(subpool);
      pool = subpool->owner;
      ASSERT_POOL(pool);

      vcos_mutex_lock(&pool->mutex);
      vcos_assert((unsigned) subpool->available_blocks < subpool->num_blocks);


      hdr->owner.next = subpool->free_list;
      subpool->free_list = hdr;
      ++(subpool->available_blocks);

      if (VCOS_BLOCKPOOL_OVERWRITE_ON_FREE)
         memset(block, 0xBD, pool->block_data_size);

      if ( (subpool->flags & VCOS_BLOCKPOOL_SUBPOOL_FLAG_EXTENSION) &&
            subpool->available_blocks == subpool->num_blocks)
      {
         VCOS_BLOCKPOOL_DEBUG_LOG("%s: freeing subpool %p mem %p", VCOS_FUNCTION,
               subpool, subpool->mem);

         vcos_free(subpool->mem);
         subpool->mem = ((void*)0);
         subpool->start = ((void*)0);
      }
      vcos_mutex_unlock(&pool->mutex);
   }
}
