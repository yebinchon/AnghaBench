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
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_11__ {int utt_started; int /*<<< orphan*/  ps; } ;
struct TYPE_10__ {int /*<<< orphan*/ * outputs; TYPE_4__* priv; } ;
struct TYPE_9__ {TYPE_3__* dst; } ;
struct TYPE_8__ {int /*<<< orphan*/  nb_samples; scalar_t__* data; int /*<<< orphan*/ * metadata; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_4__ ASRContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVDictionary **metadata = &in->metadata;
    ASRContext *s = ctx->priv;
    int have_speech;
    const char *speech;

    FUNC5(s->ps, (const int16_t *)in->data[0], in->nb_samples, 0, 0);
    have_speech = FUNC4(s->ps);
    if (have_speech && !s->utt_started)
        s->utt_started = 1;
    if (!have_speech && s->utt_started) {
        FUNC2(s->ps);
        speech = FUNC3(s->ps, NULL);
        if (speech != NULL)
            FUNC0(metadata, "lavfi.asr.text", speech, 0);
        FUNC6(s->ps);
        s->utt_started = 0;
    }

    return FUNC1(ctx->outputs[0], in);
}