
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avctx; int gb; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 unsigned int FF_ARRAY_ELEMS (int*) ;
 int av_log (int ,int ,char*) ;
 int dca_get_vlc (int *,int *,int) ;
 int* ff_dca_joint_scale_factors ;
 int ff_dca_vlc_scale_factor ;
 int get_bits (int *,int) ;

__attribute__((used)) static inline int parse_joint_scale(DCACoreDecoder *s, int sel)
{
    int scale_index;


    if (sel < 5)
        scale_index = dca_get_vlc(&s->gb, &ff_dca_vlc_scale_factor, sel);
    else
        scale_index = get_bits(&s->gb, sel + 1);


    scale_index += 64;


    if ((unsigned int)scale_index >= FF_ARRAY_ELEMS(ff_dca_joint_scale_factors)) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid joint scale factor index\n");
        return AVERROR_INVALIDDATA;
    }

    return ff_dca_joint_scale_factors[scale_index];
}
