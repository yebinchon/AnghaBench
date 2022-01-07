
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int hqdn3d_lowpass_mul( int prev_mul,
                                               int curr_mul,
                                               short * coef )
{
    int d = (prev_mul - curr_mul)>>4;
    return curr_mul + coef[d];
}
