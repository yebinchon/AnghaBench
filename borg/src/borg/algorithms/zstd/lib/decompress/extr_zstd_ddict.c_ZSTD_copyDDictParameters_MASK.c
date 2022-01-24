#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * rep; int /*<<< orphan*/  hufTable; int /*<<< orphan*/  OFTable; int /*<<< orphan*/  MLTable; int /*<<< orphan*/  LLTable; } ;
struct TYPE_9__ {int dictSize; TYPE_2__ entropy; scalar_t__ entropyPresent; scalar_t__ dictContent; int /*<<< orphan*/  dictID; } ;
typedef  TYPE_3__ ZSTD_DDict ;
struct TYPE_7__ {int /*<<< orphan*/ * rep; } ;
struct TYPE_10__ {int litEntropy; int fseEntropy; TYPE_1__ entropy; int /*<<< orphan*/  HUFptr; int /*<<< orphan*/  OFTptr; int /*<<< orphan*/  MLTptr; int /*<<< orphan*/  LLTptr; int /*<<< orphan*/  const* dictEnd; int /*<<< orphan*/  const* previousDstEnd; scalar_t__ virtualStart; scalar_t__ prefixStart; int /*<<< orphan*/  dictID; } ;
typedef  TYPE_4__ ZSTD_DCtx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(ZSTD_DCtx* dctx, const ZSTD_DDict* ddict)
{
    FUNC0(4, "ZSTD_copyDDictParameters");
    FUNC1(dctx != NULL);
    FUNC1(ddict != NULL);
    dctx->dictID = ddict->dictID;
    dctx->prefixStart = ddict->dictContent;
    dctx->virtualStart = ddict->dictContent;
    dctx->dictEnd = (const BYTE*)ddict->dictContent + ddict->dictSize;
    dctx->previousDstEnd = dctx->dictEnd;
    if (ddict->entropyPresent) {
        dctx->litEntropy = 1;
        dctx->fseEntropy = 1;
        dctx->LLTptr = ddict->entropy.LLTable;
        dctx->MLTptr = ddict->entropy.MLTable;
        dctx->OFTptr = ddict->entropy.OFTable;
        dctx->HUFptr = ddict->entropy.hufTable;
        dctx->entropy.rep[0] = ddict->entropy.rep[0];
        dctx->entropy.rep[1] = ddict->entropy.rep[1];
        dctx->entropy.rep[2] = ddict->entropy.rep[2];
    } else {
        dctx->litEntropy = 0;
        dctx->fseEntropy = 0;
    }
}