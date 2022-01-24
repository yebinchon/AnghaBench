#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum TwinVQFrameType { ____Placeholder_TwinVQFrameType } TwinVQFrameType ;
struct TYPE_9__ {TYPE_1__* mtab; } ;
typedef  TYPE_3__ TwinVQContext ;
struct TYPE_8__ {int sub; } ;
struct TYPE_7__ {int size; int n_lsp; TYPE_2__* fmode; } ;

/* Variables and functions */
#define  TWINVQ_FT_LONG 130 
#define  TWINVQ_FT_MEDIUM 129 
#define  TWINVQ_FT_SHORT 128 
 int FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,float*,float*,int,int) ; 

__attribute__((used)) static void FUNC3(TwinVQContext *tctx, float *lsp,
                                 enum TwinVQFrameType ftype, float *lpc)
{
    int i;
    int size = tctx->mtab->size / tctx->mtab->fmode[ftype].sub;

    for (i = 0; i < tctx->mtab->n_lsp; i++)
        lsp[i] = 2 * FUNC0(lsp[i]);

    switch (ftype) {
    case TWINVQ_FT_LONG:
        FUNC2(tctx, ftype, lsp, lpc, size, 8);
        break;
    case TWINVQ_FT_MEDIUM:
        FUNC2(tctx, ftype, lsp, lpc, size, 2);
        break;
    case TWINVQ_FT_SHORT:
        FUNC1(tctx, lsp, lpc);
        break;
    }
}