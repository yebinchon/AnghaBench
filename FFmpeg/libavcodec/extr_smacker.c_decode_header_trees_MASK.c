#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ extradata_size; scalar_t__ extradata; } ;
struct TYPE_5__ {int* mmap_last; int* mclr_last; int* full_last; int* type_last; scalar_t__* type_tbl; TYPE_4__* avctx; scalar_t__* full_tbl; scalar_t__* mclr_tbl; scalar_t__* mmap_tbl; } ;
typedef  TYPE_1__ SmackVContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__**,int*,int) ; 

__attribute__((used)) static int FUNC7(SmackVContext *smk) {
    GetBitContext gb;
    int mmap_size, mclr_size, full_size, type_size, ret;
    int skip = 0;

    mmap_size = FUNC1(smk->avctx->extradata);
    mclr_size = FUNC1(smk->avctx->extradata + 4);
    full_size = FUNC1(smk->avctx->extradata + 8);
    type_size = FUNC1(smk->avctx->extradata + 12);

    ret = FUNC5(&gb, smk->avctx->extradata + 16, smk->avctx->extradata_size - 16);
    if (ret < 0)
        return ret;

    if(!FUNC4(&gb)) {
        skip ++;
        FUNC2(smk->avctx, AV_LOG_INFO, "Skipping MMAP tree\n");
        smk->mmap_tbl = FUNC3(sizeof(int) * 2);
        if (!smk->mmap_tbl)
            return FUNC0(ENOMEM);
        smk->mmap_tbl[0] = 0;
        smk->mmap_last[0] = smk->mmap_last[1] = smk->mmap_last[2] = 1;
    } else {
        ret = FUNC6(smk, &gb, &smk->mmap_tbl, smk->mmap_last, mmap_size);
        if (ret < 0)
            return ret;
    }
    if(!FUNC4(&gb)) {
        skip ++;
        FUNC2(smk->avctx, AV_LOG_INFO, "Skipping MCLR tree\n");
        smk->mclr_tbl = FUNC3(sizeof(int) * 2);
        if (!smk->mclr_tbl)
            return FUNC0(ENOMEM);
        smk->mclr_tbl[0] = 0;
        smk->mclr_last[0] = smk->mclr_last[1] = smk->mclr_last[2] = 1;
    } else {
        ret = FUNC6(smk, &gb, &smk->mclr_tbl, smk->mclr_last, mclr_size);
        if (ret < 0)
            return ret;
    }
    if(!FUNC4(&gb)) {
        skip ++;
        FUNC2(smk->avctx, AV_LOG_INFO, "Skipping FULL tree\n");
        smk->full_tbl = FUNC3(sizeof(int) * 2);
        if (!smk->full_tbl)
            return FUNC0(ENOMEM);
        smk->full_tbl[0] = 0;
        smk->full_last[0] = smk->full_last[1] = smk->full_last[2] = 1;
    } else {
        ret = FUNC6(smk, &gb, &smk->full_tbl, smk->full_last, full_size);
        if (ret < 0)
            return ret;
    }
    if(!FUNC4(&gb)) {
        skip ++;
        FUNC2(smk->avctx, AV_LOG_INFO, "Skipping TYPE tree\n");
        smk->type_tbl = FUNC3(sizeof(int) * 2);
        if (!smk->type_tbl)
            return FUNC0(ENOMEM);
        smk->type_tbl[0] = 0;
        smk->type_last[0] = smk->type_last[1] = smk->type_last[2] = 1;
    } else {
        ret = FUNC6(smk, &gb, &smk->type_tbl, smk->type_last, type_size);
        if (ret < 0)
            return ret;
    }
    if (skip == 4)
        return AVERROR_INVALIDDATA;

    return 0;
}