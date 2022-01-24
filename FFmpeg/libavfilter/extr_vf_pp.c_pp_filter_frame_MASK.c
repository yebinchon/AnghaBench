#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
struct TYPE_18__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_17__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_16__ {int pict_type; int /*<<< orphan*/  linesize; scalar_t__ data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_15__ {size_t mode_id; int /*<<< orphan*/  pp_ctx; int /*<<< orphan*/ * modes; } ;
typedef  TYPE_1__ PPFilterContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int PP_PICT_TYPE_QP2 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int*,int*) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_3__*,int const,int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *inbuf)
{
    AVFilterContext *ctx = inlink->dst;
    PPFilterContext *pp = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    const int aligned_w = FUNC1(outlink->w, 8);
    const int aligned_h = FUNC1(outlink->h, 8);
    AVFrame *outbuf;
    int qstride, qp_type;
    int8_t *qp_table ;

    outbuf = FUNC6(outlink, aligned_w, aligned_h);
    if (!outbuf) {
        FUNC3(&inbuf);
        return FUNC0(ENOMEM);
    }
    FUNC2(outbuf, inbuf);
    outbuf->width  = inbuf->width;
    outbuf->height = inbuf->height;
    qp_table = FUNC4(inbuf, &qstride, &qp_type);

    FUNC7((const uint8_t **)inbuf->data, inbuf->linesize,
                   outbuf->data,                 outbuf->linesize,
                   aligned_w, outlink->h,
                   qp_table,
                   qstride,
                   pp->modes[pp->mode_id],
                   pp->pp_ctx,
                   outbuf->pict_type | (qp_type ? PP_PICT_TYPE_QP2 : 0));

    FUNC3(&inbuf);
    return FUNC5(outlink, outbuf);
}