
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_9__ {size_t num_subpools; size_t block_size; int mutex; TYPE_3__* subpools; } ;
typedef TYPE_2__ VCOS_BLOCKPOOL_T ;
struct TYPE_10__ {scalar_t__ magic; size_t num_blocks; scalar_t__ start; scalar_t__ mem; } ;
typedef TYPE_3__ VCOS_BLOCKPOOL_SUBPOOL_T ;
struct TYPE_8__ {TYPE_3__* subpool; } ;
struct TYPE_11__ {TYPE_1__ owner; } ;
typedef TYPE_4__ VCOS_BLOCKPOOL_HEADER_T ;


 int ASSERT_POOL (TYPE_2__*) ;
 size_t VCOS_BLOCKPOOL_HANDLE_GET_INDEX (size_t) ;
 size_t VCOS_BLOCKPOOL_HANDLE_GET_SUBPOOL (size_t) ;
 scalar_t__ VCOS_BLOCKPOOL_SUBPOOL_MAGIC ;
 int VCOS_FUNCTION ;
 int vcos_log_trace (char*,int ,TYPE_2__*,size_t,void*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

void *vcos_generic_blockpool_elem_from_handle(
      VCOS_BLOCKPOOL_T *pool, uint32_t handle)
{
   VCOS_BLOCKPOOL_SUBPOOL_T *subpool;
   uint32_t subpool_id;
   uint32_t index;
   void *ret = ((void*)0);

   ASSERT_POOL(pool);
   vcos_mutex_lock(&pool->mutex);
   subpool_id = VCOS_BLOCKPOOL_HANDLE_GET_SUBPOOL(handle);

   if (subpool_id < pool->num_subpools)
   {
      index = VCOS_BLOCKPOOL_HANDLE_GET_INDEX(handle);
      subpool = &pool->subpools[subpool_id];
      if (pool->subpools[subpool_id].magic == VCOS_BLOCKPOOL_SUBPOOL_MAGIC &&
            pool->subpools[subpool_id].mem && index < subpool->num_blocks)
      {
         VCOS_BLOCKPOOL_HEADER_T *hdr = (VCOS_BLOCKPOOL_HEADER_T*)
            ((size_t) subpool->start + (index * pool->block_size));

         if (hdr->owner.subpool == subpool)
            ret = hdr + 1;
      }
   }
   vcos_mutex_unlock(&pool->mutex);

   vcos_log_trace("%s: pool %p handle 0x%08x elem %p", VCOS_FUNCTION, pool,
         handle, ret);
   return ret;
}
