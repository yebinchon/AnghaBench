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
struct TYPE_15__ {int channels; } ;
struct TYPE_14__ {TYPE_2__* priv; TYPE_3__** outputs; } ;
struct TYPE_13__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_12__ {TYPE_5__ output; int /*<<< orphan*/  model; TYPE_1__* dnn_module; int /*<<< orphan*/  input; } ;
struct TYPE_11__ {scalar_t__ (* execute_model ) (int /*<<< orphan*/ ,TYPE_5__*,int) ;} ;
typedef  TYPE_2__ DnnProcessingContext ;
typedef  scalar_t__ DNNReturnType ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ DNN_SUCCESS ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 

__attribute__((used)) static int FUNC10(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *context  = inlink->dst;
    AVFilterLink *outlink = context->outputs[0];
    DnnProcessingContext *ctx = context->priv;
    DNNReturnType dnn_result;
    AVFrame *out;

    FUNC6(&ctx->input, in);

    dnn_result = (ctx->dnn_module->execute_model)(ctx->model, &ctx->output, 1);
    if (dnn_result != DNN_SUCCESS){
        FUNC4(ctx, AV_LOG_ERROR, "failed to execute model\n");
        FUNC3(&in);
        return FUNC0(EIO);
    }
    FUNC1(ctx->output.channels == 3);

    out = FUNC8(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC3(&in);
        return FUNC0(ENOMEM);
    }

    FUNC2(out, in);
    FUNC5(out, &ctx->output);
    FUNC3(&in);
    return FUNC7(outlink, out);
}