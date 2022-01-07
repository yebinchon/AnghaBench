
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterFormats ;
typedef int AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int AV_CH_LAYOUT_STEREO ;
 int AV_SAMPLE_FMT_S16 ;
 int ff_add_channel_layout (int **,int ) ;
 int ff_add_format (int **,int ) ;
 int ff_make_format_list (int const*) ;
 int ff_set_common_channel_layouts (int *,int *) ;
 int ff_set_common_formats (int *,int *) ;
 int ff_set_common_samplerates (int *,int ) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    static const int sample_rates[] = { 44100, -1 };
    int ret;

    AVFilterFormats *formats = ((void*)0);
    AVFilterChannelLayouts *layout = ((void*)0);

    if ((ret = ff_add_format (&formats, AV_SAMPLE_FMT_S16 )) < 0 ||
        (ret = ff_set_common_formats (ctx , formats )) < 0 ||
        (ret = ff_add_channel_layout (&layout , AV_CH_LAYOUT_STEREO )) < 0 ||
        (ret = ff_set_common_channel_layouts (ctx , layout )) < 0 ||
        (ret = ff_set_common_samplerates (ctx , ff_make_format_list(sample_rates) )) < 0)
        return ret;

    return 0;
}
