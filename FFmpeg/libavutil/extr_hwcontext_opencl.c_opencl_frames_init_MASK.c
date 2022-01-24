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
typedef  int /*<<< orphan*/  cl_mem ;
struct TYPE_7__ {TYPE_1__* internal; int /*<<< orphan*/  pool; } ;
struct TYPE_6__ {int /*<<< orphan*/  pool_internal; } ;
typedef  TYPE_2__ AVHWFramesContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  opencl_pool_alloc ; 

__attribute__((used)) static int FUNC3(AVHWFramesContext *hwfc)
{
    if (!hwfc->pool) {
        hwfc->internal->pool_internal =
            FUNC1(sizeof(cl_mem), hwfc,
                                 &opencl_pool_alloc, NULL);
        if (!hwfc->internal->pool_internal)
            return FUNC0(ENOMEM);
    }

    return FUNC2(hwfc);
}