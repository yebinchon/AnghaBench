
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int AV_CH_BACK_LEFT ;
 int AV_CH_BACK_RIGHT ;
 int AV_CH_FRONT_LEFT ;
 int AV_CH_FRONT_LEFT_OF_CENTER ;
 int AV_CH_FRONT_RIGHT ;
 int AV_CH_FRONT_RIGHT_OF_CENTER ;
 int AV_CH_LAYOUT_SURROUND ;
 int AV_CH_SIDE_LEFT ;
 int AV_CH_SIDE_RIGHT ;
 scalar_t__ SWR_CH_MAX ;
 scalar_t__ av_get_channel_layout_nb_channels (int) ;
 int even (int) ;

__attribute__((used)) static int sane_layout(int64_t layout){
    if(!(layout & AV_CH_LAYOUT_SURROUND))
        return 0;
    if(!even(layout & (AV_CH_FRONT_LEFT | AV_CH_FRONT_RIGHT)))
        return 0;
    if(!even(layout & (AV_CH_SIDE_LEFT | AV_CH_SIDE_RIGHT)))
        return 0;
    if(!even(layout & (AV_CH_BACK_LEFT | AV_CH_BACK_RIGHT)))
        return 0;
    if(!even(layout & (AV_CH_FRONT_LEFT_OF_CENTER | AV_CH_FRONT_RIGHT_OF_CENTER)))
        return 0;
    if(av_get_channel_layout_nb_channels(layout) >= SWR_CH_MAX)
        return 0;

    return 1;
}
