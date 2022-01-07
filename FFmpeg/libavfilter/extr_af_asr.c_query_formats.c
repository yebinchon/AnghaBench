
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int rate; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef int AVFilterFormats ;
typedef TYPE_1__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;
typedef TYPE_2__ ASRContext ;


 int AV_CH_LAYOUT_MONO ;
 int AV_SAMPLE_FMT_S16 ;
 int ff_add_channel_layout (int **,int ) ;
 int ff_add_format (int **,int ) ;
 int ff_make_format_list (int*) ;
 int ff_set_common_channel_layouts (TYPE_1__*,int *) ;
 int ff_set_common_formats (TYPE_1__*,int *) ;
 int ff_set_common_samplerates (TYPE_1__*,int ) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    ASRContext *s = ctx->priv;
    int sample_rates[] = { s->rate, -1 };
    int ret;

    AVFilterFormats *formats = ((void*)0);
    AVFilterChannelLayouts *layout = ((void*)0);

    if ((ret = ff_add_format (&formats, AV_SAMPLE_FMT_S16 )) < 0 ||
        (ret = ff_set_common_formats (ctx , formats )) < 0 ||
        (ret = ff_add_channel_layout (&layout , AV_CH_LAYOUT_MONO )) < 0 ||
        (ret = ff_set_common_channel_layouts (ctx , layout )) < 0 ||
        (ret = ff_set_common_samplerates (ctx , ff_make_format_list(sample_rates) )) < 0)
        return ret;

    return 0;
}
