#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t VCOS_UNSIGNED ;
struct TYPE_6__ {size_t num_subpools; int /*<<< orphan*/  mutex; scalar_t__ num_extension_blocks; TYPE_2__* subpools; } ;
typedef  TYPE_1__ VCOS_BLOCKPOOL_T ;
struct TYPE_7__ {scalar_t__ available_blocks; scalar_t__ start; } ;
typedef  TYPE_2__ VCOS_BLOCKPOOL_SUBPOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

VCOS_UNSIGNED FUNC4(VCOS_BLOCKPOOL_T *pool)
{
   VCOS_UNSIGNED ret = 0;
   VCOS_UNSIGNED i;

   FUNC0(pool);
   FUNC2(&pool->mutex);
   for (i = 0; i < pool->num_subpools; ++i)
   {
      VCOS_BLOCKPOOL_SUBPOOL_T *subpool = &pool->subpools[i];
      FUNC1(subpool);

      /* Assume the malloc of sub pool would succeed */
      if (subpool->start)
         ret += subpool->available_blocks;
      else
         ret += pool->num_extension_blocks;
   }
   FUNC3(&pool->mutex);
   return ret;
}