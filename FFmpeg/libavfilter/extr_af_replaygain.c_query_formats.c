
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sample_rate; } ;
typedef int AVFilterFormats ;
typedef int AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AV_CH_LAYOUT_STEREO ;
 int AV_SAMPLE_FMT_FLT ;
 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 int ff_add_channel_layout (int **,int ) ;
 int ff_add_format (int **,int ) ;
 int ff_set_common_channel_layouts (int *,int *) ;
 int ff_set_common_formats (int *,int *) ;
 int ff_set_common_samplerates (int *,int *) ;
 TYPE_1__* freqinfos ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    AVFilterFormats *formats = ((void*)0);
    AVFilterChannelLayouts *layout = ((void*)0);
    int i, ret;

    if ((ret = ff_add_format (&formats, AV_SAMPLE_FMT_FLT )) < 0 ||
        (ret = ff_set_common_formats (ctx , formats )) < 0 ||
        (ret = ff_add_channel_layout (&layout , AV_CH_LAYOUT_STEREO)) < 0 ||
        (ret = ff_set_common_channel_layouts (ctx , layout )) < 0)
        return ret;

    formats = ((void*)0);
    for (i = 0; i < FF_ARRAY_ELEMS(freqinfos); i++) {
        if ((ret = ff_add_format(&formats, freqinfos[i].sample_rate)) < 0)
            return ret;
    }

    return ff_set_common_samplerates(ctx, formats);
}
