#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_17__ {TYPE_1__* dst; } ;
struct TYPE_16__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_15__ {int /*<<< orphan*/ * taps; } ;
struct TYPE_14__ {scalar_t__ priv; TYPE_4__** outputs; } ;
typedef  TYPE_2__ EarwaxContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int NUMTAPS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *inlink, AVFrame *insamples)
{
    AVFilterLink *outlink = inlink->dst->outputs[0];
    int16_t *taps, *endin, *in, *out;
    AVFrame *outsamples = FUNC5(outlink, insamples->nb_samples);
    int len;

    if (!outsamples) {
        FUNC3(&insamples);
        return FUNC0(ENOMEM);
    }
    FUNC2(outsamples, insamples);

    taps  = ((EarwaxContext *)inlink->dst->priv)->taps;
    out   = (int16_t *)outsamples->data[0];
    in    = (int16_t *)insamples ->data[0];

    len = FUNC1(NUMTAPS, 2*insamples->nb_samples);
    // copy part of new input and process with saved input
    FUNC6(taps+NUMTAPS, in, len * sizeof(*taps));
    out   = FUNC8(taps, taps + len, out);

    // process current input
    if (2*insamples->nb_samples >= NUMTAPS ){
        endin = in + insamples->nb_samples * 2 - NUMTAPS;
        FUNC8(in, endin, out);

        // save part of input for next round
        FUNC6(taps, endin, NUMTAPS * sizeof(*taps));
    } else
        FUNC7(taps, taps + 2*insamples->nb_samples, NUMTAPS * sizeof(*taps));

    FUNC3(&insamples);
    return FUNC4(outlink, outsamples);
}