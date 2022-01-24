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
typedef  int /*<<< orphan*/  ZSTD_outBuffer ;
struct TYPE_6__ {TYPE_1__* cctxPool; scalar_t__ singleBlockingThread; } ;
typedef  TYPE_2__ ZSTDMT_CCtx ;
struct TYPE_5__ {int /*<<< orphan*/ * cctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_e_end ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

size_t FUNC3(ZSTDMT_CCtx* mtctx, ZSTD_outBuffer* output)
{
    FUNC0(4, "ZSTDMT_endStream");
    if (mtctx->singleBlockingThread)
        return FUNC2(mtctx->cctxPool->cctx[0], output);
    return FUNC1(mtctx, output, ZSTD_e_end);
}