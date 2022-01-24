#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  inputs; int /*<<< orphan*/  batch; } ;
typedef  TYPE_1__ size_params ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_7__ {void* reorg; void* random; void* jitter; void* class_scale; void* noobject_scale; void* object_scale; void* forced; void* coord_scale; void* max_boxes; void* sqrt; void* softmax; } ;
typedef  TYPE_2__ detection_layer ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,double) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

detection_layer FUNC4(list *options, size_params params)
{
    int coords = FUNC2(options, "coords", 1);
    int classes = FUNC2(options, "classes", 1);
    int rescore = FUNC2(options, "rescore", 0);
    int num = FUNC2(options, "num", 1);
    int side = FUNC2(options, "side", 7);
    detection_layer layer = FUNC0(params.batch, params.inputs, num, side, classes, coords, rescore);

    layer.softmax = FUNC2(options, "softmax", 0);
    layer.sqrt = FUNC2(options, "sqrt", 0);

    layer.max_boxes = FUNC3(options, "max",90);
    layer.coord_scale = FUNC1(options, "coord_scale", 1);
    layer.forced = FUNC2(options, "forced", 0);
    layer.object_scale = FUNC1(options, "object_scale", 1);
    layer.noobject_scale = FUNC1(options, "noobject_scale", 1);
    layer.class_scale = FUNC1(options, "class_scale", 1);
    layer.jitter = FUNC1(options, "jitter", .2);
    layer.random = FUNC3(options, "random", 0);
    layer.reorg = FUNC3(options, "reorg", 0);
    return layer;
}