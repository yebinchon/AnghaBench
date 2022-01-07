
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double sum; double* window_current; double* window_end; double* window; } ;
typedef TYPE_1__ SilenceRemoveContext ;



__attribute__((used)) static void update_rms(SilenceRemoveContext *s, double sample)
{
    s->sum -= *s->window_current;
    *s->window_current = sample * sample;
    s->sum += *s->window_current;

    s->window_current++;
    if (s->window_current >= s->window_end)
        s->window_current = s->window;
}
