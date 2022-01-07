
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UID ;
struct TYPE_3__ {int profile; int level; } ;
typedef TYPE_1__ AVCodecParameters ;


 int const* mxf_mpeg2_codec_uls ;

__attribute__((used)) static const UID *mxf_get_mpeg2_codec_ul(AVCodecParameters *par)
{
    int long_gop = 1;

    if (par->profile == 4) {
        if (par->level == 8)
            return &mxf_mpeg2_codec_uls[0+long_gop];
        else if (par->level == 4)
            return &mxf_mpeg2_codec_uls[4+long_gop];
        else if (par->level == 6)
            return &mxf_mpeg2_codec_uls[8+long_gop];
    } else if (par->profile == 0) {
        if (par->level == 5)
            return &mxf_mpeg2_codec_uls[2+long_gop];
        else if (par->level == 2)
            return &mxf_mpeg2_codec_uls[6+long_gop];
    }
    return ((void*)0);
}
