
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int all_layouts; } ;
typedef TYPE_1__ AVFilterChannelLayouts ;


 TYPE_1__* av_mallocz (int) ;

AVFilterChannelLayouts *ff_all_channel_layouts(void)
{
    AVFilterChannelLayouts *ret = av_mallocz(sizeof(*ret));
    if (!ret)
        return ((void*)0);
    ret->all_layouts = 1;
    return ret;
}
