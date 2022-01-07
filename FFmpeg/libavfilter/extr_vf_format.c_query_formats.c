
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int formats; } ;
typedef TYPE_1__ FormatContext ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * ff_make_format_list (int ) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    FormatContext *s = ctx->priv;
    AVFilterFormats *formats = ff_make_format_list(s->formats);

    if (!formats)
        return AVERROR(ENOMEM);

    return ff_set_common_formats(ctx, formats);
}
