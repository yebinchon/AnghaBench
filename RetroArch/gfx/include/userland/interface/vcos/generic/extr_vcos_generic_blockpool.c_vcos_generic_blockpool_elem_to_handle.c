
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {size_t block_size; int num_subpools; int mutex; int * subpools; } ;
typedef TYPE_2__ VCOS_BLOCKPOOL_T ;
struct TYPE_9__ {int num_blocks; scalar_t__ start; TYPE_2__* owner; } ;
typedef TYPE_3__ VCOS_BLOCKPOOL_SUBPOOL_T ;
struct TYPE_7__ {TYPE_3__* subpool; } ;
struct TYPE_10__ {TYPE_1__ owner; } ;
typedef TYPE_4__ VCOS_BLOCKPOOL_HEADER_T ;


 int ASSERT_POOL (TYPE_2__*) ;
 int ASSERT_SUBPOOL (TYPE_3__*) ;
 int VCOS_BLOCKPOOL_HANDLE_CREATE (int,int) ;
 int VCOS_BLOCKPOOL_MAX_SUBPOOLS ;
 int VCOS_FUNCTION ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*,int ,int,int,int) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

uint32_t vcos_generic_blockpool_elem_to_handle(void *block)
{
   uint32_t ret = -1;
   uint32_t index = -1;
   VCOS_BLOCKPOOL_HEADER_T *hdr = ((void*)0);
   VCOS_BLOCKPOOL_T *pool = ((void*)0);
   VCOS_BLOCKPOOL_SUBPOOL_T *subpool = ((void*)0);
   uint32_t subpool_id;

   vcos_assert(block);
   hdr = (VCOS_BLOCKPOOL_HEADER_T*) block - 1;
   subpool = hdr->owner.subpool;
   ASSERT_SUBPOOL(subpool);

   pool = subpool->owner;
   ASSERT_POOL(pool);
   vcos_mutex_lock(&pool->mutex);




   index = ((size_t) hdr - (size_t) subpool->start) / pool->block_size;
   vcos_assert(index < subpool->num_blocks);

   subpool_id = ((char*) subpool - (char*) &pool->subpools[0]) /
      sizeof(VCOS_BLOCKPOOL_SUBPOOL_T);

   vcos_assert(subpool_id < VCOS_BLOCKPOOL_MAX_SUBPOOLS);
   vcos_assert(subpool_id < pool->num_subpools);
   ret = VCOS_BLOCKPOOL_HANDLE_CREATE(index, subpool_id);

   vcos_log_trace("%s: index %d subpool_id %d handle 0x%08x",
         VCOS_FUNCTION, index, subpool_id, ret);

   vcos_mutex_unlock(&pool->mutex);
   return ret;
}
