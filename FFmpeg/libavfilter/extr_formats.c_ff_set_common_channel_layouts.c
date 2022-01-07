
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 int SET_COMMON_FORMATS (int *,int *,int ,int ,int ,int ,int ) ;
 int channel_layouts ;
 int ff_channel_layouts_ref ;
 int ff_channel_layouts_unref ;
 int in_channel_layouts ;
 int out_channel_layouts ;

int ff_set_common_channel_layouts(AVFilterContext *ctx,
                                  AVFilterChannelLayouts *layouts)
{
    SET_COMMON_FORMATS(ctx, layouts, in_channel_layouts, out_channel_layouts,
                       ff_channel_layouts_ref, ff_channel_layouts_unref, channel_layouts);
}
