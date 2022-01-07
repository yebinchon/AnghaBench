
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int AV_CH_LOW_FREQUENCY ;
 int AV_CH_LOW_FREQUENCY_2 ;

int hb_layout_get_low_freq_channel_count(int64_t layout)
{
    return !!(layout & AV_CH_LOW_FREQUENCY) +
           !!(layout & AV_CH_LOW_FREQUENCY_2);
}
