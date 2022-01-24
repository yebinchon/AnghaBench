#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  params; int /*<<< orphan*/ * seqPool; int /*<<< orphan*/ * cctxPool; int /*<<< orphan*/ * bufPool; int /*<<< orphan*/  factory; } ;
typedef  TYPE_1__ ZSTDMT_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  memory_allocation ; 

__attribute__((used)) static size_t FUNC8(ZSTDMT_CCtx* mtctx, unsigned nbWorkers)
{
    if (FUNC2(mtctx->factory, nbWorkers)) return FUNC1(memory_allocation);
    FUNC0( FUNC6(mtctx, nbWorkers) );
    mtctx->bufPool = FUNC4(mtctx->bufPool, nbWorkers);
    if (mtctx->bufPool == NULL) return FUNC1(memory_allocation);
    mtctx->cctxPool = FUNC5(mtctx->cctxPool, nbWorkers);
    if (mtctx->cctxPool == NULL) return FUNC1(memory_allocation);
    mtctx->seqPool = FUNC7(mtctx->seqPool, nbWorkers);
    if (mtctx->seqPool == NULL) return FUNC1(memory_allocation);
    FUNC3(&mtctx->params, nbWorkers);
    return 0;
}