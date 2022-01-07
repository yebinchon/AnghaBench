
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int weighted_bipred_idc; scalar_t__ weighted_pred; scalar_t__ redundant_pic_cnt_present; } ;
struct TYPE_8__ {int pict_type; TYPE_2__* priv_data; } ;
struct TYPE_6__ {int sps; TYPE_5__* pps; } ;
struct TYPE_7__ {int picture_structure; TYPE_1__ ps; } ;
typedef unsigned int MMCOOpcode ;
typedef int H264PredWeightTable ;
typedef TYPE_2__ H264ParseContext ;
typedef int GetBitContext ;
typedef TYPE_3__ AVCodecParserContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
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
 int av_log (void*,int ,char*,unsigned int) ;
 scalar_t__ ff_h264_parse_ref_count (int*,int*,int *,TYPE_5__*,int,int ,void*) ;
 int ff_h264_pred_weight_table (int *,int ,int*,int,int *,int ,void*) ;
 scalar_t__ get_bits1 (int *) ;
 int get_ue_golomb (int *) ;
 unsigned int get_ue_golomb_31 (int *) ;
 int get_ue_golomb_long (int *) ;

__attribute__((used)) static int scan_mmco_reset(AVCodecParserContext *s, GetBitContext *gb,
                           void *logctx)
{
    H264PredWeightTable pwt;
    int slice_type_nos = s->pict_type & 3;
    H264ParseContext *p = s->priv_data;
    int list_count, ref_count[2];


    if (p->ps.pps->redundant_pic_cnt_present)
        get_ue_golomb(gb);

    if (slice_type_nos == AV_PICTURE_TYPE_B)
        get_bits1(gb);

    if (ff_h264_parse_ref_count(&list_count, ref_count, gb, p->ps.pps,
                                slice_type_nos, p->picture_structure, logctx) < 0)
        return AVERROR_INVALIDDATA;

    if (slice_type_nos != AV_PICTURE_TYPE_I) {
        int list;
        for (list = 0; list < list_count; list++) {
            if (get_bits1(gb)) {
                int index;
                for (index = 0; ; index++) {
                    unsigned int reordering_of_pic_nums_idc = get_ue_golomb_31(gb);

                    if (reordering_of_pic_nums_idc < 3)
                        get_ue_golomb_long(gb);
                    else if (reordering_of_pic_nums_idc > 3) {
                        av_log(logctx, AV_LOG_ERROR,
                               "illegal reordering_of_pic_nums_idc %d\n",
                               reordering_of_pic_nums_idc);
                        return AVERROR_INVALIDDATA;
                    } else
                        break;

                    if (index >= ref_count[list]) {
                        av_log(logctx, AV_LOG_ERROR,
                               "reference count %d overflow\n", index);
                        return AVERROR_INVALIDDATA;
                    }
                }
            }
        }
    }

    if ((p->ps.pps->weighted_pred && slice_type_nos == AV_PICTURE_TYPE_P) ||
        (p->ps.pps->weighted_bipred_idc == 1 && slice_type_nos == AV_PICTURE_TYPE_B))
        ff_h264_pred_weight_table(gb, p->ps.sps, ref_count, slice_type_nos,
                                  &pwt, p->picture_structure, logctx);

    if (get_bits1(gb)) {
        int i;
        for (i = 0; i < MAX_MMCO_COUNT; i++) {
            MMCOOpcode opcode = get_ue_golomb_31(gb);
            if (opcode > (unsigned) MMCO_LONG) {
                av_log(logctx, AV_LOG_ERROR,
                       "illegal memory management control operation %d\n",
                       opcode);
                return AVERROR_INVALIDDATA;
            }
            if (opcode == MMCO_END)
               return 0;
            else if (opcode == MMCO_RESET)
                return 1;

            if (opcode == MMCO_SHORT2UNUSED || opcode == MMCO_SHORT2LONG)
                get_ue_golomb_long(gb);
            if (opcode == MMCO_SHORT2LONG || opcode == MMCO_LONG2UNUSED ||
                opcode == MMCO_LONG || opcode == MMCO_SET_MAX_LONG)
                get_ue_golomb_31(gb);
        }
    }

    return 0;
}
