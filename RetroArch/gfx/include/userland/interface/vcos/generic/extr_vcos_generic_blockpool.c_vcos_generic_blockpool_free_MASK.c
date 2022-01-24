#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  block_data_size; } ;
typedef  TYPE_2__ VCOS_BLOCKPOOL_T ;
struct TYPE_9__ {scalar_t__ available_blocks; unsigned int num_blocks; int flags; int /*<<< orphan*/ * start; int /*<<< orphan*/ * mem; TYPE_4__* free_list; TYPE_2__* owner; } ;
typedef  TYPE_3__ VCOS_BLOCKPOOL_SUBPOOL_T ;
struct TYPE_7__ {TYPE_4__* next; TYPE_3__* subpool; } ;
struct TYPE_10__ {TYPE_1__ owner; } ;
typedef  TYPE_4__ VCOS_BLOCKPOOL_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,...) ; 
 scalar_t__ VCOS_BLOCKPOOL_OVERWRITE_ON_FREE ; 
 int VCOS_BLOCKPOOL_SUBPOOL_FLAG_EXTENSION ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void *block)
{
   FUNC2("block %p", block);
   if (block)
   {
      VCOS_BLOCKPOOL_HEADER_T* hdr = (VCOS_BLOCKPOOL_HEADER_T*) block - 1;
      VCOS_BLOCKPOOL_SUBPOOL_T *subpool = hdr->owner.subpool;
      VCOS_BLOCKPOOL_T *pool = NULL;

      FUNC1(subpool);
      pool = subpool->owner;
      FUNC0(pool);

      FUNC6(&pool->mutex);
      FUNC4((unsigned) subpool->available_blocks < subpool->num_blocks);

      /* Change ownership of block to be the free list */
      hdr->owner.next = subpool->free_list;
      subpool->free_list = hdr;
      ++(subpool->available_blocks);

      if (VCOS_BLOCKPOOL_OVERWRITE_ON_FREE)
         FUNC3(block, 0xBD, pool->block_data_size); /* For debugging */

      if ( (subpool->flags & VCOS_BLOCKPOOL_SUBPOOL_FLAG_EXTENSION) &&
            subpool->available_blocks == subpool->num_blocks)
      {
         FUNC2("%s: freeing subpool %p mem %p", VCOS_FUNCTION,
               subpool, subpool->mem);
         /* Free the sub-pool if it was dynamically allocated */
         FUNC5(subpool->mem);
         subpool->mem = NULL;
         subpool->start = NULL;
      }
      FUNC7(&pool->mutex);
   }
}