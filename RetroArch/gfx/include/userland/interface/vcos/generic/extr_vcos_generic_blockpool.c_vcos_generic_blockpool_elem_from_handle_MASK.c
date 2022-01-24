#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_9__ {size_t num_subpools; size_t block_size; int /*<<< orphan*/  mutex; TYPE_3__* subpools; } ;
typedef  TYPE_2__ VCOS_BLOCKPOOL_T ;
struct TYPE_10__ {scalar_t__ magic; size_t num_blocks; scalar_t__ start; scalar_t__ mem; } ;
typedef  TYPE_3__ VCOS_BLOCKPOOL_SUBPOOL_T ;
struct TYPE_8__ {TYPE_3__* subpool; } ;
struct TYPE_11__ {TYPE_1__ owner; } ;
typedef  TYPE_4__ VCOS_BLOCKPOOL_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 scalar_t__ VCOS_BLOCKPOOL_SUBPOOL_MAGIC ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,TYPE_2__*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void *FUNC6(
      VCOS_BLOCKPOOL_T *pool, uint32_t handle)
{
   VCOS_BLOCKPOOL_SUBPOOL_T *subpool;
   uint32_t subpool_id;
   uint32_t index;
   void *ret = NULL;

   FUNC0(pool);
   FUNC4(&pool->mutex);
   subpool_id = FUNC2(handle);

   if (subpool_id < pool->num_subpools)
   {
      index = FUNC1(handle);
      subpool = &pool->subpools[subpool_id];
      if (pool->subpools[subpool_id].magic == VCOS_BLOCKPOOL_SUBPOOL_MAGIC &&
            pool->subpools[subpool_id].mem && index < subpool->num_blocks)
      {
         VCOS_BLOCKPOOL_HEADER_T *hdr = (VCOS_BLOCKPOOL_HEADER_T*)
            ((size_t) subpool->start + (index * pool->block_size));

         if (hdr->owner.subpool == subpool) /* Check block is allocated */
            ret = hdr + 1;
      }
   }
   FUNC5(&pool->mutex);

   FUNC3("%s: pool %p handle 0x%08x elem %p", VCOS_FUNCTION, pool,
         handle, ret);
   return ret;
}