#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCOS_UNSIGNED ;
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_6__ {TYPE_1__* subpools; } ;
typedef  TYPE_2__ VCOS_BLOCKPOOL_T ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCOS_BLOCKPOOL_SUBPOOL_FLAG_OWNS_MEM ; 
 scalar_t__ VCOS_ENOMEM ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 void* FUNC4 (size_t,char const*) ; 

VCOS_STATUS_T FUNC5(VCOS_BLOCKPOOL_T *pool,
      VCOS_UNSIGNED num_blocks, VCOS_UNSIGNED block_size, VCOS_UNSIGNED align,
      VCOS_UNSIGNED flags, const char *name)
{
   VCOS_STATUS_T status = VCOS_SUCCESS;
   size_t size = FUNC0(num_blocks, block_size, align);
   void* mem = FUNC4(size, name);

   FUNC3("%s: num_blocks %d block_size %d name %s",
         VCOS_FUNCTION, num_blocks, block_size, name);

   if (! mem)
      return VCOS_ENOMEM;

   status = FUNC2(pool, num_blocks,
         block_size, mem, size, align, flags, name);

   if (status != VCOS_SUCCESS)
      goto fail;

   pool->subpools[0].flags |= VCOS_BLOCKPOOL_SUBPOOL_FLAG_OWNS_MEM;
   return status;

fail:
   FUNC1(mem);
   return status;
}