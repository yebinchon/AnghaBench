
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FFMAX (float,float) ;

__attribute__((used)) static void calc_stereo_peak(const float *samples, int nb_samples,
                             float *peak_p)
{
    float peak = 0.0;

    while (nb_samples--) {
        if (samples[0] > peak)
            peak = samples[0];
        else if (-samples[0] > peak)
            peak = -samples[0];

        if (samples[1] > peak)
            peak = samples[1];
        else if (-samples[1] > peak)
            peak = -samples[1];

        samples += 2;
    }

    *peak_p = FFMAX(peak, *peak_p);
}
