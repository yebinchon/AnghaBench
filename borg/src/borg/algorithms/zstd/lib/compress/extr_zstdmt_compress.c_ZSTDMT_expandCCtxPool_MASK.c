#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_customMem ;
struct TYPE_6__ {int totalCCtx; int /*<<< orphan*/  cMem; } ;
typedef  TYPE_1__ ZSTDMT_CCtxPool ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static ZSTDMT_CCtxPool* FUNC2(ZSTDMT_CCtxPool* srcPool,
                                              int nbWorkers)
{
    if (srcPool==NULL) return NULL;
    if (nbWorkers <= srcPool->totalCCtx) return srcPool;   /* good enough */
    /* need a larger cctx pool */
    {   ZSTD_customMem const cMem = srcPool->cMem;
        FUNC1(srcPool);
        return FUNC0(nbWorkers, cMem);
    }
}