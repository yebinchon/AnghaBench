#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* priv; } ;
struct TYPE_9__ {int* icmap; unsigned long nb_inputcontrols; scalar_t__* ictlv; TYPE_1__* desc; } ;
struct TYPE_8__ {scalar_t__ LowerBound; scalar_t__ UpperBound; int /*<<< orphan*/  HintDescriptor; } ;
struct TYPE_7__ {char* Label; scalar_t__ PortRangeHints; } ;
typedef  TYPE_2__ LADSPA_PortRangeHint ;
typedef  scalar_t__ LADSPA_Data ;
typedef  TYPE_3__ LADSPAContext ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx, unsigned long port, LADSPA_Data value)
{
    LADSPAContext *s = ctx->priv;
    const char *label = s->desc->Label;
    LADSPA_PortRangeHint *h = (LADSPA_PortRangeHint *)s->desc->PortRangeHints +
                              s->icmap[port];

    if (port >= s->nb_inputcontrols) {
        FUNC3(ctx, AV_LOG_ERROR, "Control c%ld is out of range [0 - %lu].\n",
               port, s->nb_inputcontrols);
        return FUNC0(EINVAL);
    }

    if (FUNC2(h->HintDescriptor) &&
            value < h->LowerBound) {
        FUNC3(ctx, AV_LOG_ERROR,
                "%s: input control c%ld is below lower boundary of %0.4f.\n",
                label, port, h->LowerBound);
        return FUNC0(EINVAL);
    }

    if (FUNC1(h->HintDescriptor) &&
            value > h->UpperBound) {
        FUNC3(ctx, AV_LOG_ERROR,
                "%s: input control c%ld is above upper boundary of %0.4f.\n",
                label, port, h->UpperBound);
        return FUNC0(EINVAL);
    }

    s->ictlv[port] = value;

    return 0;
}