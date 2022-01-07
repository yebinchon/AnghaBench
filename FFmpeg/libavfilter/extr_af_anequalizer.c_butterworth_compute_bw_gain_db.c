
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double butterworth_compute_bw_gain_db(double gain)
{
    double bw_gain = 0;

    if (gain <= -6)
        bw_gain = gain + 3;
    else if(gain > -6 && gain < 6)
        bw_gain = gain * 0.5;
    else if(gain >= 6)
        bw_gain = gain - 3;

    return bw_gain;
}
