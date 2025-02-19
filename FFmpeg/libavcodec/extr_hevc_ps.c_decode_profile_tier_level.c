
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int profile_idc; void* frame_only_constraint_flag; void* non_packed_constraint_flag; void* interlaced_source_flag; void* progressive_source_flag; void** profile_compatibility_flag; void* tier_flag; void* profile_space; } ;
typedef TYPE_1__ PTLCommon ;
typedef int GetBitContext ;
typedef int AVCodecContext ;


 int AV_LOG_DEBUG ;
 int AV_LOG_WARNING ;
 int FF_PROFILE_HEVC_MAIN ;
 int FF_PROFILE_HEVC_MAIN_10 ;
 int FF_PROFILE_HEVC_MAIN_STILL_PICTURE ;
 int FF_PROFILE_HEVC_REXT ;
 int av_log (int *,int ,char*,...) ;
 void* get_bits (int *,int) ;
 void* get_bits1 (int *) ;
 int get_bits_left (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_profile_tier_level(GetBitContext *gb, AVCodecContext *avctx,
                                      PTLCommon *ptl)
{
    int i;

    if (get_bits_left(gb) < 2+1+5 + 32 + 4 + 16 + 16 + 12)
        return -1;

    ptl->profile_space = get_bits(gb, 2);
    ptl->tier_flag = get_bits1(gb);
    ptl->profile_idc = get_bits(gb, 5);
    if (ptl->profile_idc == FF_PROFILE_HEVC_MAIN)
        av_log(avctx, AV_LOG_DEBUG, "Main profile bitstream\n");
    else if (ptl->profile_idc == FF_PROFILE_HEVC_MAIN_10)
        av_log(avctx, AV_LOG_DEBUG, "Main 10 profile bitstream\n");
    else if (ptl->profile_idc == FF_PROFILE_HEVC_MAIN_STILL_PICTURE)
        av_log(avctx, AV_LOG_DEBUG, "Main Still Picture profile bitstream\n");
    else if (ptl->profile_idc == FF_PROFILE_HEVC_REXT)
        av_log(avctx, AV_LOG_DEBUG, "Range Extension profile bitstream\n");
    else
        av_log(avctx, AV_LOG_WARNING, "Unknown HEVC profile: %d\n", ptl->profile_idc);

    for (i = 0; i < 32; i++) {
        ptl->profile_compatibility_flag[i] = get_bits1(gb);

        if (ptl->profile_idc == 0 && i > 0 && ptl->profile_compatibility_flag[i])
            ptl->profile_idc = i;
    }
    ptl->progressive_source_flag = get_bits1(gb);
    ptl->interlaced_source_flag = get_bits1(gb);
    ptl->non_packed_constraint_flag = get_bits1(gb);
    ptl->frame_only_constraint_flag = get_bits1(gb);

    skip_bits(gb, 16);
    skip_bits(gb, 16);
    skip_bits(gb, 12);

    return 0;
}
