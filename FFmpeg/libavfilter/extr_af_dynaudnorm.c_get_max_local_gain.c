
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double peak_value; double target_rms; int max_amplification; } ;
typedef TYPE_1__ DynamicAudioNormalizerContext ;
typedef int AVFrame ;


 double DBL_EPSILON ;
 double DBL_MAX ;
 int FFMIN (double const,double const) ;
 double bound (int ,int ) ;
 double compute_frame_rms (int *,int) ;
 double find_peak_magnitude (int *,int) ;

__attribute__((used)) static double get_max_local_gain(DynamicAudioNormalizerContext *s, AVFrame *frame,
                                 int channel)
{
    const double maximum_gain = s->peak_value / find_peak_magnitude(frame, channel);
    const double rms_gain = s->target_rms > DBL_EPSILON ? (s->target_rms / compute_frame_rms(frame, channel)) : DBL_MAX;
    return bound(s->max_amplification, FFMIN(maximum_gain, rms_gain));
}
