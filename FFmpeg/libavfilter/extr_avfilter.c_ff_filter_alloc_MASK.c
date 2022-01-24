#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int priv_size; scalar_t__ (* preinit ) (TYPE_1__*) ;int /*<<< orphan*/  (* uninit ) (TYPE_1__*) ;int /*<<< orphan*/  outputs; int /*<<< orphan*/  inputs; int /*<<< orphan*/ * priv_class; } ;
struct TYPE_11__ {int nb_inputs; int nb_outputs; struct TYPE_11__* internal; struct TYPE_11__* priv; struct TYPE_11__* output_pads; struct TYPE_11__* outputs; struct TYPE_11__* input_pads; struct TYPE_11__* inputs; int /*<<< orphan*/  execute; int /*<<< orphan*/ * name; TYPE_2__ const* filter; int /*<<< orphan*/ * av_class; } ;
typedef  int /*<<< orphan*/  AVFilterPad ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_1__ AVFilterContext ;
typedef  TYPE_2__ AVFilter ;
typedef  int /*<<< orphan*/  AVClass ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 void* FUNC2 (int,int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/  avfilter_class ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_execute ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

AVFilterContext *FUNC11(const AVFilter *filter, const char *inst_name)
{
    AVFilterContext *ret;
    int preinited = 0;

    if (!filter)
        return NULL;

    ret = FUNC3(sizeof(AVFilterContext));
    if (!ret)
        return NULL;

    ret->av_class = &avfilter_class;
    ret->filter   = filter;
    ret->name     = inst_name ? FUNC6(inst_name) : NULL;
    if (filter->priv_size) {
        ret->priv     = FUNC3(filter->priv_size);
        if (!ret->priv)
            goto err;
    }
    if (filter->preinit) {
        if (filter->preinit(ret) < 0)
            goto err;
        preinited = 1;
    }

    FUNC5(ret);
    if (filter->priv_class) {
        *(const AVClass**)ret->priv = filter->priv_class;
        FUNC5(ret->priv);
    }

    ret->internal = FUNC3(sizeof(*ret->internal));
    if (!ret->internal)
        goto err;
    ret->internal->execute = default_execute;

    ret->nb_inputs = FUNC7(filter->inputs);
    if (ret->nb_inputs ) {
        ret->input_pads   = FUNC2(ret->nb_inputs, sizeof(AVFilterPad));
        if (!ret->input_pads)
            goto err;
        FUNC8(ret->input_pads, filter->inputs, sizeof(AVFilterPad) * ret->nb_inputs);
        ret->inputs       = FUNC4(ret->nb_inputs, sizeof(AVFilterLink*));
        if (!ret->inputs)
            goto err;
    }

    ret->nb_outputs = FUNC7(filter->outputs);
    if (ret->nb_outputs) {
        ret->output_pads  = FUNC2(ret->nb_outputs, sizeof(AVFilterPad));
        if (!ret->output_pads)
            goto err;
        FUNC8(ret->output_pads, filter->outputs, sizeof(AVFilterPad) * ret->nb_outputs);
        ret->outputs      = FUNC4(ret->nb_outputs, sizeof(AVFilterLink*));
        if (!ret->outputs)
            goto err;
    }

    return ret;

err:
    if (preinited)
        filter->uninit(ret);
    FUNC1(&ret->inputs);
    FUNC1(&ret->input_pads);
    ret->nb_inputs = 0;
    FUNC1(&ret->outputs);
    FUNC1(&ret->output_pads);
    ret->nb_outputs = 0;
    FUNC1(&ret->priv);
    FUNC1(&ret->internal);
    FUNC0(ret);
    return NULL;
}