#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_1__* dst; } ;
struct TYPE_18__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  nb_samples; int /*<<< orphan*/  extended_data; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* phaser ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_16__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef  TYPE_2__ AudioPhaserContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *inbuf)
{
    AudioPhaserContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *outbuf;

    if (FUNC3(inbuf)) {
        outbuf = inbuf;
    } else {
        outbuf = FUNC5(outlink, inbuf->nb_samples);
        if (!outbuf) {
            FUNC2(&inbuf);
            return FUNC0(ENOMEM);
        }
        FUNC1(outbuf, inbuf);
    }

    s->phaser(s, inbuf->extended_data, outbuf->extended_data,
              outbuf->nb_samples, outbuf->channels);

    if (inbuf != outbuf)
        FUNC2(&inbuf);

    return FUNC4(outlink, outbuf);
}