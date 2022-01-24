#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_13__ {int codec_type; int format; int sample_rate; int channel_layout; } ;
struct TYPE_12__ {int nb_outputs; TYPE_4__** outputs; TYPE_3__* priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  in_samplerates; int /*<<< orphan*/  in_formats; } ;
struct TYPE_10__ {TYPE_2__* st; } ;
struct TYPE_9__ {TYPE_1__* st; } ;
struct TYPE_8__ {TYPE_6__* codecpar; } ;
typedef  TYPE_2__ MovieStream ;
typedef  TYPE_3__ MovieContext ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;
typedef  TYPE_6__ AVCodecParameters ;

/* Variables and functions */
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx)
{
    MovieContext *movie = ctx->priv;
    int list[] = { 0, -1 };
    int64_t list64[] = { 0, -1 };
    int i, ret;

    for (i = 0; i < ctx->nb_outputs; i++) {
        MovieStream *st = &movie->st[i];
        AVCodecParameters *c = st->st->codecpar;
        AVFilterLink *outlink = ctx->outputs[i];

        switch (c->codec_type) {
        case AVMEDIA_TYPE_VIDEO:
            list[0] = c->format;
            if ((ret = FUNC2(FUNC3(list), &outlink->in_formats)) < 0)
                return ret;
            break;
        case AVMEDIA_TYPE_AUDIO:
            list[0] = c->format;
            if ((ret = FUNC2(FUNC3(list), &outlink->in_formats)) < 0)
                return ret;
            list[0] = c->sample_rate;
            if ((ret = FUNC2(FUNC3(list), &outlink->in_samplerates)) < 0)
                return ret;
            list64[0] = c->channel_layout;
            if ((ret = FUNC1(FUNC0(list64),
                                   &outlink->in_channel_layouts)) < 0)
                return ret;
            break;
        }
    }

    return 0;
}