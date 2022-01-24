#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__** outputs; TYPE_2__* priv; } ;
struct TYPE_10__ {TYPE_4__* dst; } ;
struct TYPE_9__ {int max_ir_len; } ;
struct TYPE_8__ {int sample_rate; } ;
typedef  TYPE_2__ AudioFIRContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC3(AVFilterLink *link, AVFrame *frame)
{
    AVFilterContext *ctx = link->dst;
    AudioFIRContext *s = ctx->priv;
    int nb_taps, max_nb_taps;

    nb_taps = FUNC2(link);
    max_nb_taps = s->max_ir_len * ctx->outputs[0]->sample_rate;
    if (nb_taps > max_nb_taps) {
        FUNC1(ctx, AV_LOG_ERROR, "Too big number of coefficients: %d > %d.\n", nb_taps, max_nb_taps);
        return FUNC0(EINVAL);
    }

    return 0;
}