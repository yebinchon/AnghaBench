#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_11__ {TYPE_2__* priv; } ;
struct TYPE_10__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* src; } ;
struct TYPE_9__ {TYPE_5__ output; int /*<<< orphan*/  model; TYPE_1__* dnn_module; } ;
struct TYPE_8__ {scalar_t__ (* execute_model ) (int /*<<< orphan*/ ,TYPE_5__*,int) ;} ;
typedef  TYPE_2__ DnnProcessingContext ;
typedef  scalar_t__ DNNReturnType ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ DNN_SUCCESS ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 

__attribute__((used)) static int FUNC3(AVFilterLink *outlink)
{
    AVFilterContext *context = outlink->src;
    DnnProcessingContext *ctx = context->priv;
    DNNReturnType result;

    // have a try run in case that the dnn model resize the frame
    result = (ctx->dnn_module->execute_model)(ctx->model, &ctx->output, 1);
    if (result != DNN_SUCCESS){
        FUNC1(ctx, AV_LOG_ERROR, "failed to execute model\n");
        return FUNC0(EIO);
    }

    outlink->w = ctx->output.width;
    outlink->h = ctx->output.height;

    return 0;
}