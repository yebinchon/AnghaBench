#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_CCtx ;
struct TYPE_3__ {int availCCtx; int /*<<< orphan*/  cMem; int /*<<< orphan*/  poolMutex; int /*<<< orphan*/ ** cctx; } ;
typedef  TYPE_1__ ZSTDMT_CCtxPool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ZSTD_CCtx* FUNC4(ZSTDMT_CCtxPool* cctxPool)
{
    FUNC0(5, "ZSTDMT_getCCtx");
    FUNC2(&cctxPool->poolMutex);
    if (cctxPool->availCCtx) {
        cctxPool->availCCtx--;
        {   ZSTD_CCtx* const cctx = cctxPool->cctx[cctxPool->availCCtx];
            FUNC3(&cctxPool->poolMutex);
            return cctx;
    }   }
    FUNC3(&cctxPool->poolMutex);
    FUNC0(5, "create one more CCtx");
    return FUNC1(cctxPool->cMem);   /* note : can be NULL, when creation fails ! */
}