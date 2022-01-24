#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_22__ {int nb_samples; int /*<<< orphan*/ * linesize; } ;
struct TYPE_21__ {int in_sample_rate; scalar_t__ out_sample_rate; } ;
typedef  TYPE_1__ SwrContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*,TYPE_2__ const*) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*,TYPE_2__ const*) ; 
 int FUNC6 (TYPE_1__*,scalar_t__) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int FUNC9(SwrContext *s,
                      AVFrame *out, const AVFrame *in)
{
    int ret, setup = 0;

    if (!FUNC8(s)) {
        if ((ret = FUNC5(s, out, in)) < 0)
            return ret;
        if ((ret = FUNC7(s)) < 0)
            return ret;
        setup = 1;
    } else {
        // return as is or reconfigure for input changes?
        if ((ret = FUNC2(s, out, in)))
            return ret;
    }

    if (out) {
        if (!out->linesize[0]) {
            out->nb_samples = FUNC6(s, s->out_sample_rate) + 3;
            if (in) {
                out->nb_samples += in->nb_samples*(int64_t)s->out_sample_rate / s->in_sample_rate;
            }
            if ((ret = FUNC0(out, 0)) < 0) {
                if (setup)
                    FUNC4(s);
                return ret;
            }
        } else {
            if (!out->nb_samples)
                out->nb_samples = FUNC1(out);
        }
    }

    return FUNC3(s, out, in);
}