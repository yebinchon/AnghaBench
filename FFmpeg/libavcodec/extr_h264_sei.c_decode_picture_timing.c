
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__** sps_list; TYPE_2__* sps; } ;
struct TYPE_11__ {int pic_struct; int ct_type; int present; scalar_t__ timecode_cnt; TYPE_3__* timecode; void* dpb_output_delay; void* cpb_removal_delay; } ;
struct TYPE_10__ {int dropframe; int frame; int full; int seconds; int minutes; int hours; } ;
struct TYPE_9__ {int time_offset_length; scalar_t__ pic_struct_present_flag; int dpb_output_delay_length; int cpb_removal_delay_length; scalar_t__ vcl_hrd_parameters_present_flag; scalar_t__ nal_hrd_parameters_present_flag; int log2_max_frame_num; } ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_2__ SPS ;
typedef TYPE_3__ H264SEITimeCode ;
typedef TYPE_4__ H264SEIPictureTiming ;
typedef TYPE_5__ H264ParamSets ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PS_NOT_FOUND ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int H264_SEI_PIC_STRUCT_FRAME_TRIPLING ;
 int MAX_SPS_COUNT ;
 int av_log (void*,int ,char*,...) ;
 int get_bits (int *,int) ;
 void* get_bits_long (int *,int ) ;
 unsigned int* sei_num_clock_ts_table ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_picture_timing(H264SEIPictureTiming *h, GetBitContext *gb,
                                 const H264ParamSets *ps, void *logctx)
{
    int i;
    const SPS *sps = ps->sps;

    for (i = 0; i<MAX_SPS_COUNT; i++)
        if ((!sps || !sps->log2_max_frame_num) && ps->sps_list[i])
            sps = (const SPS *)ps->sps_list[i]->data;

    if (!sps) {
        av_log(logctx, AV_LOG_ERROR, "SPS unavailable in decode_picture_timing\n");
        return AVERROR_PS_NOT_FOUND;
    }

    if (sps->nal_hrd_parameters_present_flag ||
        sps->vcl_hrd_parameters_present_flag) {
        h->cpb_removal_delay = get_bits_long(gb, sps->cpb_removal_delay_length);
        h->dpb_output_delay = get_bits_long(gb, sps->dpb_output_delay_length);
    }
    if (sps->pic_struct_present_flag) {
        unsigned int i, num_clock_ts;

        h->pic_struct = get_bits(gb, 4);
        h->ct_type = 0;

        if (h->pic_struct > H264_SEI_PIC_STRUCT_FRAME_TRIPLING)
            return AVERROR_INVALIDDATA;

        num_clock_ts = sei_num_clock_ts_table[h->pic_struct];
        h->timecode_cnt = 0;
        for (i = 0; i < num_clock_ts; i++) {
            if (get_bits(gb, 1)) {
                H264SEITimeCode *tc = &h->timecode[h->timecode_cnt++];
                unsigned int full_timestamp_flag;
                unsigned int counting_type, cnt_dropped_flag;
                h->ct_type |= 1 << get_bits(gb, 2);
                skip_bits(gb, 1);
                counting_type = get_bits(gb, 5);
                full_timestamp_flag = get_bits(gb, 1);
                skip_bits(gb, 1);
                cnt_dropped_flag = get_bits(gb, 1);
                if (cnt_dropped_flag && counting_type > 1 && counting_type < 7)
                    tc->dropframe = 1;
                tc->frame = get_bits(gb, 8);
                if (full_timestamp_flag) {
                    tc->full = 1;
                    tc->seconds = get_bits(gb, 6);
                    tc->minutes = get_bits(gb, 6);
                    tc->hours = get_bits(gb, 5);
                } else {
                    tc->seconds = tc->minutes = tc->hours = tc->full = 0;
                    if (get_bits(gb, 1)) {
                        tc->seconds = get_bits(gb, 6);
                        if (get_bits(gb, 1)) {
                            tc->minutes = get_bits(gb, 6);
                            if (get_bits(gb, 1))
                                tc->hours = get_bits(gb, 5);
                        }
                    }
                }

                if (sps->time_offset_length > 0)
                    skip_bits(gb,
                              sps->time_offset_length);
            }
        }

        av_log(logctx, AV_LOG_DEBUG, "ct_type:%X pic_struct:%d\n",
               h->ct_type, h->pic_struct);
    }

    h->present = 1;
    return 0;
}
