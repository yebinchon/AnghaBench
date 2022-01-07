
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* desc; } ;
struct TYPE_6__ {double LowerBound; double UpperBound; int HintDescriptor; } ;
struct TYPE_5__ {TYPE_2__* PortRangeHints; } ;
typedef TYPE_2__ LADSPA_PortRangeHint ;
typedef double LADSPA_Data ;
typedef TYPE_3__ LADSPAContext ;


 scalar_t__ LADSPA_IS_HINT_DEFAULT_0 (int ) ;
 scalar_t__ LADSPA_IS_HINT_DEFAULT_1 (int ) ;
 scalar_t__ LADSPA_IS_HINT_DEFAULT_100 (int ) ;
 scalar_t__ LADSPA_IS_HINT_DEFAULT_440 (int ) ;
 scalar_t__ LADSPA_IS_HINT_DEFAULT_HIGH (int ) ;
 scalar_t__ LADSPA_IS_HINT_DEFAULT_LOW (int ) ;
 scalar_t__ LADSPA_IS_HINT_DEFAULT_MAXIMUM (int ) ;
 scalar_t__ LADSPA_IS_HINT_DEFAULT_MIDDLE (int ) ;
 scalar_t__ LADSPA_IS_HINT_DEFAULT_MINIMUM (int ) ;
 scalar_t__ LADSPA_IS_HINT_LOGARITHMIC (int ) ;
 double exp (double) ;
 double log (double const) ;

__attribute__((used)) static void set_default_ctl_value(LADSPAContext *s, int ctl,
                                  unsigned long *map, LADSPA_Data *values)
{
    const LADSPA_PortRangeHint *h = s->desc->PortRangeHints + map[ctl];
    const LADSPA_Data lower = h->LowerBound;
    const LADSPA_Data upper = h->UpperBound;

    if (LADSPA_IS_HINT_DEFAULT_MINIMUM(h->HintDescriptor)) {
        values[ctl] = lower;
    } else if (LADSPA_IS_HINT_DEFAULT_MAXIMUM(h->HintDescriptor)) {
        values[ctl] = upper;
    } else if (LADSPA_IS_HINT_DEFAULT_0(h->HintDescriptor)) {
        values[ctl] = 0.0;
    } else if (LADSPA_IS_HINT_DEFAULT_1(h->HintDescriptor)) {
        values[ctl] = 1.0;
    } else if (LADSPA_IS_HINT_DEFAULT_100(h->HintDescriptor)) {
        values[ctl] = 100.0;
    } else if (LADSPA_IS_HINT_DEFAULT_440(h->HintDescriptor)) {
        values[ctl] = 440.0;
    } else if (LADSPA_IS_HINT_DEFAULT_LOW(h->HintDescriptor)) {
        if (LADSPA_IS_HINT_LOGARITHMIC(h->HintDescriptor))
            values[ctl] = exp(log(lower) * 0.75 + log(upper) * 0.25);
        else
            values[ctl] = lower * 0.75 + upper * 0.25;
    } else if (LADSPA_IS_HINT_DEFAULT_MIDDLE(h->HintDescriptor)) {
        if (LADSPA_IS_HINT_LOGARITHMIC(h->HintDescriptor))
            values[ctl] = exp(log(lower) * 0.5 + log(upper) * 0.5);
        else
            values[ctl] = lower * 0.5 + upper * 0.5;
    } else if (LADSPA_IS_HINT_DEFAULT_HIGH(h->HintDescriptor)) {
        if (LADSPA_IS_HINT_LOGARITHMIC(h->HintDescriptor))
            values[ctl] = exp(log(lower) * 0.25 + log(upper) * 0.75);
        else
            values[ctl] = lower * 0.25 + upper * 0.75;
    }
}
