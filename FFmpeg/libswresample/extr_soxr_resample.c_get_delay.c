
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SwrContext {double out_sample_rate; scalar_t__ delayed_samples_fixup; scalar_t__ flushed; scalar_t__ resample; } ;
typedef int soxr_t ;
typedef double int64_t ;


 double soxr_delay (int ) ;

__attribute__((used)) static int64_t get_delay(struct SwrContext *s, int64_t base){
    double delayed_samples = soxr_delay((soxr_t)s->resample);
    double delay_s;

    if (s->flushed)
        delayed_samples += s->delayed_samples_fixup;

    delay_s = delayed_samples / s->out_sample_rate;

    return (int64_t)(delay_s * base + .5);
}
