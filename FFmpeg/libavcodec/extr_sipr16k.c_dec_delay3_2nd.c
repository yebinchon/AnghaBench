
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_clip (int,int,int) ;

__attribute__((used)) static int dec_delay3_2nd(int index, int pit_min, int pit_max,
                          int pitch_lag_prev)
{
    if (index < 62) {
        int pitch_delay_min = av_clip(pitch_lag_prev - 10,
                                      pit_min, pit_max - 19);
        return 3 * pitch_delay_min + index - 2;
    } else
        return 3 * pitch_lag_prev;
}
