#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int weighted_bipred_idc; scalar_t__ weighted_pred; scalar_t__ redundant_pic_cnt_present; } ;
struct TYPE_8__ {int pict_type; TYPE_2__* priv_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  sps; TYPE_5__* pps; } ;
struct TYPE_7__ {int /*<<< orphan*/  picture_structure; TYPE_1__ ps; } ;
typedef  unsigned int MMCOOpcode ;
typedef  int /*<<< orphan*/  H264PredWeightTable ;
typedef  TYPE_2__ H264ParseContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ AVCodecParserContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_PICTURE_TYPE_B ; 
 int AV_PICTURE_TYPE_I ; 
 int AV_PICTURE_TYPE_P ; 
 int MAX_MMCO_COUNT ; 
 unsigned int MMCO_END ; 
 unsigned int MMCO_LONG ; 
 unsigned int MMCO_LONG2UNUSED ; 
 unsigned int MMCO_RESET ; 
 unsigned int MMCO_SET_MAX_LONG ; 
 unsigned int MMCO_SHORT2LONG ; 
 unsigned int MMCO_SHORT2UNUSED ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC1 (int*,int*,int /*<<< orphan*/ *,TYPE_5__*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVCodecParserContext *s, GetBitContext *gb,
                           void *logctx)
{
    H264PredWeightTable pwt;
    int slice_type_nos = s->pict_type & 3;
    H264ParseContext *p = s->priv_data;
    int list_count, ref_count[2];


    if (p->ps.pps->redundant_pic_cnt_present)
        FUNC4(gb); // redundant_pic_count

    if (slice_type_nos == AV_PICTURE_TYPE_B)
        FUNC3(gb); // direct_spatial_mv_pred

    if (FUNC1(&list_count, ref_count, gb, p->ps.pps,
                                slice_type_nos, p->picture_structure, logctx) < 0)
        return AVERROR_INVALIDDATA;

    if (slice_type_nos != AV_PICTURE_TYPE_I) {
        int list;
        for (list = 0; list < list_count; list++) {
            if (FUNC3(gb)) {
                int index;
                for (index = 0; ; index++) {
                    unsigned int reordering_of_pic_nums_idc = FUNC5(gb);

                    if (reordering_of_pic_nums_idc < 3)
                        FUNC6(gb);
                    else if (reordering_of_pic_nums_idc > 3) {
                        FUNC0(logctx, AV_LOG_ERROR,
                               "illegal reordering_of_pic_nums_idc %d\n",
                               reordering_of_pic_nums_idc);
                        return AVERROR_INVALIDDATA;
                    } else
                        break;

                    if (index >= ref_count[list]) {
                        FUNC0(logctx, AV_LOG_ERROR,
                               "reference count %d overflow\n", index);
                        return AVERROR_INVALIDDATA;
                    }
                }
            }
        }
    }

    if ((p->ps.pps->weighted_pred && slice_type_nos == AV_PICTURE_TYPE_P) ||
        (p->ps.pps->weighted_bipred_idc == 1 && slice_type_nos == AV_PICTURE_TYPE_B))
        FUNC2(gb, p->ps.sps, ref_count, slice_type_nos,
                                  &pwt, p->picture_structure, logctx);

    if (FUNC3(gb)) { // adaptive_ref_pic_marking_mode_flag
        int i;
        for (i = 0; i < MAX_MMCO_COUNT; i++) {
            MMCOOpcode opcode = FUNC5(gb);
            if (opcode > (unsigned) MMCO_LONG) {
                FUNC0(logctx, AV_LOG_ERROR,
                       "illegal memory management control operation %d\n",
                       opcode);
                return AVERROR_INVALIDDATA;
            }
            if (opcode == MMCO_END)
               return 0;
            else if (opcode == MMCO_RESET)
                return 1;

            if (opcode == MMCO_SHORT2UNUSED || opcode == MMCO_SHORT2LONG)
                FUNC6(gb); // difference_of_pic_nums_minus1
            if (opcode == MMCO_SHORT2LONG || opcode == MMCO_LONG2UNUSED ||
                opcode == MMCO_LONG || opcode == MMCO_SET_MAX_LONG)
                FUNC5(gb);
        }
    }

    return 0;
}