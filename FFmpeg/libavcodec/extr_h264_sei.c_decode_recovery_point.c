
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int recovery_frame_cnt; } ;
typedef TYPE_1__ H264SEIRecoveryPoint ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int MAX_LOG2_MAX_FRAME_NUM ;
 int av_log (void*,int ,char*,unsigned int) ;
 unsigned int get_ue_golomb_long (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_recovery_point(H264SEIRecoveryPoint *h, GetBitContext *gb, void *logctx)
{
    unsigned recovery_frame_cnt = get_ue_golomb_long(gb);

    if (recovery_frame_cnt >= (1<<MAX_LOG2_MAX_FRAME_NUM)) {
        av_log(logctx, AV_LOG_ERROR, "recovery_frame_cnt %u is out of range\n", recovery_frame_cnt);
        return AVERROR_INVALIDDATA;
    }

    h->recovery_frame_cnt = recovery_frame_cnt;



    skip_bits(gb, 4);

    return 0;
}
