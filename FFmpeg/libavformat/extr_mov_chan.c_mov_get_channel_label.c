
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AV_CH_STEREO_LEFT ;
 int AV_CH_STEREO_RIGHT ;

__attribute__((used)) static uint32_t mov_get_channel_label(uint32_t label)
{
    if (label == 0)
        return 0;
    if (label <= 18)
        return 1U << (label - 1);
    if (label == 38)
        return AV_CH_STEREO_LEFT;
    if (label == 39)
        return AV_CH_STEREO_RIGHT;
    return 0;
}
