#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_18__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_31__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_30__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_29__ {int /*<<< orphan*/ * metadata; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_27__ {int available; } ;
struct TYPE_28__ {int size; float* luminance; size_t available; float (* calc_avgy ) (TYPE_4__*,TYPE_2__*) ;int bypass; int nb_planes; int* planewidth; int depth; TYPE_18__ q; int /*<<< orphan*/ * planeheight; int /*<<< orphan*/  (* deflicker ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ;int /*<<< orphan*/  (* get_factor ) (TYPE_4__*,float*) ;int /*<<< orphan*/  eof; } ;
typedef  TYPE_1__ DeflickerContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_18__*,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_18__*) ; 
 TYPE_2__* FUNC7 (TYPE_18__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*,float) ; 
 float FUNC12 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,float*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 float FUNC15 (TYPE_4__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(AVFilterLink *inlink, AVFrame *buf)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    DeflickerContext *s = ctx->priv;
    AVDictionary **metadata;
    AVFrame *out, *in;
    float f;
    int y;

    if (s->q.available < s->size && !s->eof) {
        s->luminance[s->available] = s->calc_avgy(ctx, buf);
        FUNC5(ctx, &s->q, buf);
        s->available++;
        return 0;
    }

    in = FUNC7(&s->q, 0);

    out = FUNC9(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC3(&buf);
        return FUNC0(ENOMEM);
    }

    s->get_factor(ctx, &f);
    if (!s->bypass)
        s->deflicker(ctx, in->data[0], in->linesize[0], out->data[0], out->linesize[0],
                     outlink->w, outlink->h, f);
    for (y = 1 - s->bypass; y < s->nb_planes; y++) {
        FUNC4(out->data[y], out->linesize[y],
                            in->data[y], in->linesize[y],
                            s->planewidth[y] * (1 + (s->depth > 8)), s->planeheight[y]);
    }

    FUNC2(out, in);
    metadata = &out->metadata;
    if (metadata) {
        uint8_t value[128];

        FUNC11(value, sizeof(value), "%f", s->luminance[0]);
        FUNC1(metadata, "lavfi.deflicker.luminance", value, 0);

        FUNC11(value, sizeof(value), "%f", s->luminance[0] * f);
        FUNC1(metadata, "lavfi.deflicker.new_luminance", value, 0);

        FUNC11(value, sizeof(value), "%f", f - 1.0f);
        FUNC1(metadata, "lavfi.deflicker.relative_change", value, 0);
    }

    in = FUNC6(&s->q);
    FUNC3(&in);
    FUNC10(&s->luminance[0], &s->luminance[1], sizeof(*s->luminance) * (s->size - 1));
    s->luminance[s->available - 1] = s->calc_avgy(ctx, buf);
    FUNC5(ctx, &s->q, buf);

    return FUNC8(outlink, out);
}