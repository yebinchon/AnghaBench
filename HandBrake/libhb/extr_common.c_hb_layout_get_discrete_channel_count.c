
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int av_get_channel_layout_nb_channels (int ) ;

int hb_layout_get_discrete_channel_count(int64_t layout)
{
    return av_get_channel_layout_nb_channels(layout);
}
