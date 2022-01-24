#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int8_t ;
struct TYPE_14__ {int* data; } ;
struct TYPE_13__ {scalar_t__ is_disabled; TYPE_1__* priv; TYPE_2__** outputs; } ;
struct TYPE_12__ {TYPE_3__* dst; } ;
struct TYPE_11__ {int h; int qstride; int* lut; int /*<<< orphan*/  qp_expr_str; scalar_t__ evaluate_per_mb; } ;
typedef  TYPE_1__ QPContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;
typedef  TYPE_4__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t const NAN ; 
 TYPE_4__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**) ; 
 int FUNC3 (double*,int /*<<< orphan*/ ,char const**,double*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 size_t* FUNC6 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int,int) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (double) ; 

__attribute__((used)) static int FUNC10(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    QPContext *s = ctx->priv;
    AVBufferRef *out_qp_table_buf;
    AVFrame *out = NULL;
    const int8_t *in_qp_table;
    int type, stride, ret;

    if (!s->qp_expr_str || ctx->is_disabled)
        return FUNC8(outlink, in);

    out_qp_table_buf = FUNC1(s->h * s->qstride);
    if (!out_qp_table_buf) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    out = FUNC4(in);
    if (!out) {
        FUNC2(&out_qp_table_buf);
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    in_qp_table = FUNC6(in, &stride, &type);
    FUNC7(out, out_qp_table_buf, s->qstride, type);


    if (s->evaluate_per_mb) {
        int y, x;

        for (y = 0; y < s->h; y++)
            for (x = 0; x < s->qstride; x++) {
                int qp = in_qp_table ? in_qp_table[x + stride * y] : NAN;
                double var_values[] = { !!in_qp_table, qp, x, y, s->qstride, s->h, 0};
                static const char *var_names[] = { "known", "qp", "x", "y", "w", "h", NULL };
                double temp_val;

                ret = FUNC3(&temp_val, s->qp_expr_str,
                                            var_names, var_values,
                                            NULL, NULL, NULL, NULL, 0, 0, ctx);
                if (ret < 0)
                    goto fail;
                out_qp_table_buf->data[x + s->qstride * y] = FUNC9(temp_val);
            }
    } else if (in_qp_table) {
        int y, x;

        for (y = 0; y < s->h; y++)
            for (x = 0; x < s->qstride; x++)
                out_qp_table_buf->data[x + s->qstride * y] = s->lut[129 +
                    ((int8_t)in_qp_table[x + stride * y])];
    } else {
        int y, x, qp = s->lut[0];

        for (y = 0; y < s->h; y++)
            for (x = 0; x < s->qstride; x++)
                out_qp_table_buf->data[x + s->qstride * y] = qp;
    }

    ret = FUNC8(outlink, out);
    out = NULL;
fail:
    FUNC5(&in);
    FUNC5(&out);
    return ret;
}