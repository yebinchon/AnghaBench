
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int profile; int level; int bitdepth; int chroma_subsampling; int full_range_flag; } ;
typedef TYPE_1__ VPCC ;
struct TYPE_7__ {int color_primaries; int color_trc; int color_space; } ;
typedef int AVIOContext ;
typedef int AVFormatContext ;
typedef TYPE_2__ AVCodecParameters ;


 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int ) ;
 int ff_isom_get_vpcc_features (int *,TYPE_2__*,int *,TYPE_1__*) ;

int ff_isom_write_vpcc(AVFormatContext *s, AVIOContext *pb,
                       AVCodecParameters *par)
{
    VPCC vpcc;
    int ret;

    ret = ff_isom_get_vpcc_features(s, par, ((void*)0), &vpcc);
    if (ret < 0)
        return ret;

    avio_w8(pb, vpcc.profile);
    avio_w8(pb, vpcc.level);
    avio_w8(pb, (vpcc.bitdepth << 4) | (vpcc.chroma_subsampling << 1) | vpcc.full_range_flag);
    avio_w8(pb, par->color_primaries);
    avio_w8(pb, par->color_trc);
    avio_w8(pb, par->color_space);


    avio_wb16(pb, 0);
    return 0;
}
