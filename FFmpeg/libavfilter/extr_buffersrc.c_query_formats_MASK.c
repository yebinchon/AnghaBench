#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__** outputs; TYPE_2__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_8__ {int type; } ;
typedef  TYPE_2__ BufferSourceContext ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx)
{
    BufferSourceContext *c = ctx->priv;
    AVFilterChannelLayouts *channel_layouts = NULL;
    AVFilterFormats *formats = NULL;
    AVFilterFormats *samplerates = NULL;
    int ret;

    switch (ctx->outputs[0]->type) {
    case AVMEDIA_TYPE_VIDEO:
        if ((ret = FUNC3         (&formats, c->pix_fmt)) < 0 ||
            (ret = FUNC5 (ctx     , formats   )) < 0)
            return ret;
        break;
    case AVMEDIA_TYPE_AUDIO:
        if ((ret = FUNC3             (&formats    , c->sample_fmt )) < 0 ||
            (ret = FUNC5     (ctx         , formats       )) < 0 ||
            (ret = FUNC3             (&samplerates, c->sample_rate)) < 0 ||
            (ret = FUNC6 (ctx         , samplerates   )) < 0)
            return ret;

        if ((ret = FUNC2(&channel_layouts,
                              c->channel_layout ? c->channel_layout :
                              FUNC1(c->channels))) < 0)
            return ret;
        if ((ret = FUNC4(ctx, channel_layouts)) < 0)
            return ret;
        break;
    default:
        return FUNC0(EINVAL);
    }

    return 0;
}