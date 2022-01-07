
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ bitrate; } ;
typedef TYPE_1__ EVRCContext ;


 scalar_t__ RATE_FULL ;
 float av_clipf (float,double,double) ;
 int decode_3_pulses_10bits (int const,float*) ;
 int decode_8_pulses_35bits (int const*,float*) ;

__attribute__((used)) static void fcb_excitation(EVRCContext *e, const uint16_t *codebook,
                           float *excitation, float pitch_gain,
                           int pitch_lag, int subframe_size)
{
    int i;

    if (e->bitrate == RATE_FULL)
        decode_8_pulses_35bits(codebook, excitation);
    else
        decode_3_pulses_10bits(*codebook, excitation);

    pitch_gain = av_clipf(pitch_gain, 0.2, 0.9);

    for (i = pitch_lag; i < subframe_size; i++)
        excitation[i] += pitch_gain * excitation[i - pitch_lag];
}
