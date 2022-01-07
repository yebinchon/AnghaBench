
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int avctx; int gb; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 unsigned int FF_ARRAY_ELEMS (int*) ;
 int av_log (int ,int ,char*) ;
 scalar_t__ dca_get_vlc (int *,int *,int) ;
 int* ff_dca_scale_factor_quant6 ;
 int* ff_dca_scale_factor_quant7 ;
 int ff_dca_vlc_scale_factor ;
 int get_bits (int *,int) ;

__attribute__((used)) static inline int parse_scale(DCACoreDecoder *s, int *scale_index, int sel)
{
    const uint32_t *scale_table;
    unsigned int scale_size;


    if (sel > 5) {
        scale_table = ff_dca_scale_factor_quant7;
        scale_size = FF_ARRAY_ELEMS(ff_dca_scale_factor_quant7);
    } else {
        scale_table = ff_dca_scale_factor_quant6;
        scale_size = FF_ARRAY_ELEMS(ff_dca_scale_factor_quant6);
    }


    if (sel < 5)
        *scale_index += dca_get_vlc(&s->gb, &ff_dca_vlc_scale_factor, sel);
    else
        *scale_index = get_bits(&s->gb, sel + 1);


    if ((unsigned int)*scale_index >= scale_size) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid scale factor index\n");
        return AVERROR_INVALIDDATA;
    }

    return scale_table[*scale_index];
}
