#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct VC_CONTAINER_IO_ASYNC_T {int dummy; } ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_IO_PRIVATE_CACHE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC1( struct VC_CONTAINER_IO_ASYNC_T *ctx,
                                                     VC_CONTAINER_IO_PRIVATE_CACHE_T *cache, int complete )
{
   FUNC0(ctx);
   FUNC0(*cache);
   FUNC0(complete);
   return 0;
}