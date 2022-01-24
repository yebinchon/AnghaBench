#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t VCOS_UNSIGNED ;
struct TYPE_9__ {size_t num_subpools; int /*<<< orphan*/  mutex; int /*<<< orphan*/  align; int /*<<< orphan*/  block_data_size; TYPE_2__* subpools; } ;
typedef  TYPE_1__ VCOS_BLOCKPOOL_T ;
struct TYPE_10__ {int flags; int /*<<< orphan*/ * start; TYPE_1__* mem; int /*<<< orphan*/  num_blocks; } ;
typedef  TYPE_2__ VCOS_BLOCKPOOL_SUBPOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VCOS_BLOCKPOOL_SUBPOOL_FLAG_OWNS_MEM ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(VCOS_BLOCKPOOL_T *pool)
{
   FUNC5("%s: pool %p", VCOS_FUNCTION, pool);

   if (pool)
   {
      VCOS_UNSIGNED i;

      FUNC0(pool);
      for (i = 0; i < pool->num_subpools; ++i)
      {
         VCOS_BLOCKPOOL_SUBPOOL_T *subpool = &pool->subpools[i];
         FUNC1(subpool);
         if (subpool->mem)
         {
            /* For debugging */
            FUNC3(subpool->mem,
                  0xBE,
                  FUNC2(subpool->num_blocks,
                     pool->block_data_size, pool->align));

            if (subpool->flags & VCOS_BLOCKPOOL_SUBPOOL_FLAG_OWNS_MEM)
               FUNC4(subpool->mem);
            subpool->mem = NULL;
            subpool->start = NULL;
         }
      }
      FUNC6(&pool->mutex);
      FUNC3(pool, 0xBE, sizeof(VCOS_BLOCKPOOL_T)); /* For debugging */
   }
}