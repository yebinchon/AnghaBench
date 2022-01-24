#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_24__ {int /*<<< orphan*/  value; } ;
struct TYPE_23__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_22__ {scalar_t__ w; int h; TYPE_4__* dst; } ;
struct TYPE_21__ {scalar_t__ width; int height; int* data; int* linesize; int /*<<< orphan*/ * metadata; } ;
struct TYPE_20__ {int slide; int nb_values; int* values_size; float** values; double min; double max; int bg; scalar_t__ x; int mode; int* prev_y; TYPE_2__* out; int /*<<< orphan*/ * first; int /*<<< orphan*/ * fg_expr; int /*<<< orphan*/ * key; } ;
typedef  TYPE_1__ DrawGraphContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;
typedef  TYPE_5__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int,int) ; 
 float NAN ; 
 size_t VAR_MAX ; 
 size_t VAR_MIN ; 
 size_t VAR_VAL ; 
 int VAR_VARS_NB ; 
 float FUNC3 (float,double,double) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,double*,int /*<<< orphan*/ *) ; 
 float* FUNC6 (float*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,float*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,TYPE_2__*) ; 
 int FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int,int) ; 

__attribute__((used)) static int FUNC16(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    DrawGraphContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVDictionary *metadata;
    AVDictionaryEntry *e;
    AVFrame *out = s->out;
    int i;

    if (s->slide == 4 && s->nb_values >= s->values_size[0] / sizeof(float)) {
        float *ptr;

        ptr = FUNC6(s->values[0], &s->values_size[0], s->values_size[0] * 2);
        if (!ptr)
            return FUNC0(ENOMEM);
        s->values[0] = ptr;

        ptr = FUNC6(s->values[1], &s->values_size[1], s->values_size[1] * 2);
        if (!ptr)
            return FUNC0(ENOMEM);
        s->values[1] = ptr;

        ptr = FUNC6(s->values[2], &s->values_size[2], s->values_size[2] * 2);
        if (!ptr)
            return FUNC0(ENOMEM);
        s->values[2] = ptr;

        ptr = FUNC6(s->values[3], &s->values_size[3], s->values_size[3] * 2);
        if (!ptr)
            return FUNC0(ENOMEM);
        s->values[3] = ptr;
    }

    if (s->slide != 4 || s->nb_values == 0) {
        if (!s->out || s->out->width  != outlink->w ||
                       s->out->height != outlink->h) {
            FUNC9(&s->out);
            s->out = FUNC14(outlink, outlink->w, outlink->h);
            out = s->out;
            if (!s->out) {
                FUNC9(&in);
                return FUNC0(ENOMEM);
            }

            FUNC11(s, out, outlink);
        }
        FUNC8(out, in);
    }

    metadata = in->metadata;

    for (i = 0; i < 4; i++) {
        double values[VAR_VARS_NB];
        int j, y, x, old;
        uint32_t fg, bg;
        float vf;

        if (s->slide == 4)
            s->values[i][s->nb_values] = NAN;

        e = FUNC4(metadata, s->key[i], NULL, 0);
        if (!e || !e->value)
            continue;

        if (FUNC10(e->value, "%f", &vf) != 1)
            continue;

        vf = FUNC3(vf, s->min, s->max);

        if (s->slide == 4) {
            s->values[i][s->nb_values] = vf;
            continue;
        }

        values[VAR_MIN] = s->min;
        values[VAR_MAX] = s->max;
        values[VAR_VAL] = vf;

        fg = FUNC5(s->fg_expr[i], values, NULL);
        bg = FUNC1(s->bg);

        if (i == 0 && (s->x >= outlink->w || s->slide == 3)) {
            if (s->slide == 0 || s->slide == 1)
                s->x = 0;

            if (s->slide == 2) {
                s->x = outlink->w - 1;
                for (j = 0; j < outlink->h; j++) {
                    FUNC15(out->data[0] + j * out->linesize[0] ,
                            out->data[0] + j * out->linesize[0] + 4,
                            (outlink->w - 1) * 4);
                }
            } else if (s->slide == 3) {
                s->x = 0;
                for (j = 0; j < outlink->h; j++) {
                    FUNC15(out->data[0] + j * out->linesize[0] + 4,
                            out->data[0] + j * out->linesize[0],
                            (outlink->w - 1) * 4);
                }
            } else if (s->slide == 0) {
                FUNC11(s, out, outlink);
            }
        }

        x = s->x;
        y = (outlink->h - 1) * (1 - ((vf - s->min) / (s->max - s->min)));

        switch (s->mode) {
        case 0:
            if (i == 0 && (s->slide > 0))
                for (j = 0; j < outlink->h; j++)
                    FUNC12(bg, x, j, out);

            old = FUNC1(out->data[0] + y * out->linesize[0] + x * 4);
            for (j = y; j < outlink->h; j++) {
                if (old != bg &&
                    (FUNC1(out->data[0] + j * out->linesize[0] + x * 4) != old) ||
                    FUNC1(out->data[0] + FUNC2(j+1, outlink->h - 1) * out->linesize[0] + x * 4) != old) {
                    FUNC12(fg, x, j, out);
                    break;
                }
                FUNC12(fg, x, j, out);
            }
            break;
        case 1:
            if (i == 0 && (s->slide > 0))
                for (j = 0; j < outlink->h; j++)
                    FUNC12(bg, x, j, out);
            FUNC12(fg, x, y, out);
            break;
        case 2:
            if (s->first[i]) {
                s->first[i] = 0;
                s->prev_y[i] = y;
            }

            if (i == 0 && (s->slide > 0)) {
                for (j = 0; j < y; j++)
                    FUNC12(bg, x, j, out);
                for (j = outlink->h - 1; j > y; j--)
                    FUNC12(bg, x, j, out);
            }
            if (y <= s->prev_y[i]) {
                for (j = y; j <= s->prev_y[i]; j++)
                    FUNC12(fg, x, j, out);
            } else {
                for (j = s->prev_y[i]; j <= y; j++)
                    FUNC12(fg, x, j, out);
            }
            s->prev_y[i] = y;
            break;
        }
    }

    s->nb_values++;
    s->x++;

    FUNC9(&in);

    if (s->slide == 4)
        return 0;

    return FUNC13(outlink, FUNC7(s->out));
}