
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int profile; int level; int bitdepth; int chroma_subsampling; int full_range_flag; } ;
typedef TYPE_1__ VPCC ;
struct TYPE_7__ {int profile; int level; int color_range; int chroma_location; int format; } ;
typedef int AVRational ;
typedef int AVFormatContext ;
typedef TYPE_2__ AVCodecParameters ;


 int AVERROR_INVALIDDATA ;
 int FF_LEVEL_UNKNOWN ;
 int FF_PROFILE_UNKNOWN ;
 int FF_PROFILE_VP9_0 ;
 int FF_PROFILE_VP9_1 ;
 int FF_PROFILE_VP9_2 ;
 int FF_PROFILE_VP9_3 ;
 int VPX_SUBSAMPLING_420_COLLOCATED_WITH_LUMA ;
 int VPX_SUBSAMPLING_420_VERTICAL ;
 int get_bit_depth (int *,int ) ;
 int get_vp9_level (TYPE_2__*,int *) ;
 int get_vpx_chroma_subsampling (int *,int ,int ) ;
 int get_vpx_video_full_range_flag (int ) ;

int ff_isom_get_vpcc_features(AVFormatContext *s, AVCodecParameters *par,
                              AVRational *frame_rate, VPCC *vpcc)
{
    int profile = par->profile;
    int level = par->level == FF_LEVEL_UNKNOWN ?
        get_vp9_level(par, frame_rate) : par->level;
    int bit_depth = get_bit_depth(s, par->format);
    int vpx_chroma_subsampling =
        get_vpx_chroma_subsampling(s, par->format, par->chroma_location);
    int vpx_video_full_range_flag =
        get_vpx_video_full_range_flag(par->color_range);

    if (bit_depth < 0 || vpx_chroma_subsampling < 0)
        return AVERROR_INVALIDDATA;

    if (profile == FF_PROFILE_UNKNOWN) {
        if (vpx_chroma_subsampling == VPX_SUBSAMPLING_420_VERTICAL ||
            vpx_chroma_subsampling == VPX_SUBSAMPLING_420_COLLOCATED_WITH_LUMA) {
            profile = (bit_depth == 8) ? FF_PROFILE_VP9_0 : FF_PROFILE_VP9_2;
        } else {
            profile = (bit_depth == 8) ? FF_PROFILE_VP9_1 : FF_PROFILE_VP9_3;
        }
    }

    vpcc->profile = profile;
    vpcc->level = level;
    vpcc->bitdepth = bit_depth;
    vpcc->chroma_subsampling = vpx_chroma_subsampling;
    vpcc->full_range_flag = vpx_video_full_range_flag;

    return 0;
}
