#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  customMem; scalar_t__ staticSize; } ;
typedef  TYPE_1__ ZSTD_CCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_allocation ; 

size_t FUNC3(ZSTD_CCtx* cctx)
{
    if (cctx==NULL) return 0;   /* support free on NULL */
    if (cctx->staticSize) return FUNC0(memory_allocation);   /* not compatible with static CCtx */
    FUNC2(cctx);
    FUNC1(cctx, cctx->customMem);
    return 0;
}