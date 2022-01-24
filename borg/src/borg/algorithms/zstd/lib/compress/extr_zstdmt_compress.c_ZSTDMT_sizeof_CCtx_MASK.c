#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTDMT_jobDescription ;
struct TYPE_4__ {size_t capacity; } ;
struct TYPE_5__ {int jobIDMask; TYPE_1__ roundBuff; int /*<<< orphan*/  cdictLocal; int /*<<< orphan*/  seqPool; int /*<<< orphan*/  cctxPool; int /*<<< orphan*/  bufPool; int /*<<< orphan*/  factory; } ;
typedef  TYPE_2__ ZSTDMT_CCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

size_t FUNC5(ZSTDMT_CCtx* mtctx)
{
    if (mtctx == NULL) return 0;   /* supports sizeof NULL */
    return sizeof(*mtctx)
            + FUNC0(mtctx->factory)
            + FUNC2(mtctx->bufPool)
            + (mtctx->jobIDMask+1) * sizeof(ZSTDMT_jobDescription)
            + FUNC1(mtctx->cctxPool)
            + FUNC3(mtctx->seqPool)
            + FUNC4(mtctx->cdictLocal)
            + mtctx->roundBuff.capacity;
}