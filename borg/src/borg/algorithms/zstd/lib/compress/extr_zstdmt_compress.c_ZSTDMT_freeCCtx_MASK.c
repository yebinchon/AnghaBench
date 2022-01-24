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
struct TYPE_6__ {TYPE_2__* buffer; } ;
struct TYPE_7__ {int /*<<< orphan*/  cMem; TYPE_1__ roundBuff; int /*<<< orphan*/  cdictLocal; int /*<<< orphan*/  serial; int /*<<< orphan*/  seqPool; int /*<<< orphan*/  cctxPool; int /*<<< orphan*/  bufPool; scalar_t__ jobIDMask; int /*<<< orphan*/  jobs; int /*<<< orphan*/  factory; } ;
typedef  TYPE_2__ ZSTDMT_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

size_t FUNC9(ZSTDMT_CCtx* mtctx)
{
    if (mtctx==NULL) return 0;   /* compatible with free on NULL */
    FUNC0(mtctx->factory);   /* stop and free worker threads */
    FUNC5(mtctx);  /* release job resources into pools first */
    FUNC3(mtctx->jobs, mtctx->jobIDMask+1, mtctx->cMem);
    FUNC1(mtctx->bufPool);
    FUNC2(mtctx->cctxPool);
    FUNC4(mtctx->seqPool);
    FUNC6(&mtctx->serial);
    FUNC8(mtctx->cdictLocal);
    if (mtctx->roundBuff.buffer)
        FUNC7(mtctx->roundBuff.buffer, mtctx->cMem);
    FUNC7(mtctx, mtctx->cMem);
    return 0;
}