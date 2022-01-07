
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* window; scalar_t__* window_current; scalar_t__* window_end; int sum; } ;
typedef TYPE_1__ SilenceRemoveContext ;


 scalar_t__ fabs (double) ;

__attribute__((used)) static void update_peak(SilenceRemoveContext *s, double sample)
{
    s->sum -= *s->window_current;
    *s->window_current = fabs(sample);
    s->sum += *s->window_current;

    s->window_current++;
    if (s->window_current >= s->window_end)
        s->window_current = s->window;
}
