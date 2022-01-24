#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  source_planes ;
struct TYPE_15__ {TYPE_2__* priv; TYPE_4__** outputs; } ;
struct TYPE_14__ {int channels; int /*<<< orphan*/  channel_layout; TYPE_5__* dst; } ;
struct TYPE_13__ {int channels; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/ ** data; int /*<<< orphan*/ ** extended_data; } ;
struct TYPE_12__ {int nch; TYPE_1__* map; } ;
struct TYPE_11__ {size_t out_channel_idx; size_t in_channel_idx; } ;
typedef  TYPE_2__ ChannelMapContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int const,int const) ; 
 int const FUNC2 (int /*<<< orphan*/ **) ; 
 int MAX_CH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC5 (int const,int) ; 
 int FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int const) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *buf)
{
    AVFilterContext  *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    const ChannelMapContext *s = ctx->priv;
    const int nch_in = inlink->channels;
    const int nch_out = s->nch;
    int ch;
    uint8_t *source_planes[MAX_CH];

    FUNC7(source_planes, buf->extended_data,
           nch_in * sizeof(source_planes[0]));

    if (nch_out > nch_in) {
        if (nch_out > FUNC2(buf->data)) {
            uint8_t **new_extended_data =
                FUNC5(nch_out, sizeof(*buf->extended_data));
            if (!new_extended_data) {
                FUNC3(&buf);
                return FUNC0(ENOMEM);
            }
            if (buf->extended_data == buf->data) {
                buf->extended_data = new_extended_data;
            } else {
                FUNC4(buf->extended_data);
                buf->extended_data = new_extended_data;
            }
        } else if (buf->extended_data != buf->data) {
            FUNC4(buf->extended_data);
            buf->extended_data = buf->data;
        }
    }

    for (ch = 0; ch < nch_out; ch++) {
        buf->extended_data[s->map[ch].out_channel_idx] =
            source_planes[s->map[ch].in_channel_idx];
    }

    if (buf->data != buf->extended_data)
        FUNC7(buf->data, buf->extended_data,
           FUNC1(FUNC2(buf->data), nch_out) * sizeof(buf->data[0]));

    buf->channel_layout = outlink->channel_layout;
    buf->channels       = outlink->channels;

    return FUNC6(outlink, buf);
}