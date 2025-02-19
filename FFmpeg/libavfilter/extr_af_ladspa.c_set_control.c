
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* priv; } ;
struct TYPE_9__ {int* icmap; unsigned long nb_inputcontrols; scalar_t__* ictlv; TYPE_1__* desc; } ;
struct TYPE_8__ {scalar_t__ LowerBound; scalar_t__ UpperBound; int HintDescriptor; } ;
struct TYPE_7__ {char* Label; scalar_t__ PortRangeHints; } ;
typedef TYPE_2__ LADSPA_PortRangeHint ;
typedef scalar_t__ LADSPA_Data ;
typedef TYPE_3__ LADSPAContext ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 scalar_t__ LADSPA_IS_HINT_BOUNDED_ABOVE (int ) ;
 scalar_t__ LADSPA_IS_HINT_BOUNDED_BELOW (int ) ;
 int av_log (TYPE_4__*,int ,char*,...) ;

__attribute__((used)) static int set_control(AVFilterContext *ctx, unsigned long port, LADSPA_Data value)
{
    LADSPAContext *s = ctx->priv;
    const char *label = s->desc->Label;
    LADSPA_PortRangeHint *h = (LADSPA_PortRangeHint *)s->desc->PortRangeHints +
                              s->icmap[port];

    if (port >= s->nb_inputcontrols) {
        av_log(ctx, AV_LOG_ERROR, "Control c%ld is out of range [0 - %lu].\n",
               port, s->nb_inputcontrols);
        return AVERROR(EINVAL);
    }

    if (LADSPA_IS_HINT_BOUNDED_BELOW(h->HintDescriptor) &&
            value < h->LowerBound) {
        av_log(ctx, AV_LOG_ERROR,
                "%s: input control c%ld is below lower boundary of %0.4f.\n",
                label, port, h->LowerBound);
        return AVERROR(EINVAL);
    }

    if (LADSPA_IS_HINT_BOUNDED_ABOVE(h->HintDescriptor) &&
            value > h->UpperBound) {
        av_log(ctx, AV_LOG_ERROR,
                "%s: input control c%ld is above upper boundary of %0.4f.\n",
                label, port, h->UpperBound);
        return AVERROR(EINVAL);
    }

    s->ictlv[port] = value;

    return 0;
}
