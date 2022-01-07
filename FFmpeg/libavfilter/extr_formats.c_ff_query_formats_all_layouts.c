
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;


 int default_query_formats_common (int *,int ) ;
 int ff_all_channel_layouts ;

int ff_query_formats_all_layouts(AVFilterContext *ctx)
{
    return default_query_formats_common(ctx, ff_all_channel_layouts);
}
