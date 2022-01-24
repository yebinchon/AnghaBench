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
struct TYPE_6__ {scalar_t__ inputs; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  batch; } ;
typedef  TYPE_1__ size_params ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_7__ {scalar_t__ outputs; float* biases; int /*<<< orphan*/  map; int /*<<< orphan*/  softmax_tree; void* bias_match; void* class_scale; void* mask_scale; void* noobject_scale; void* object_scale; void* coord_scale; void* random; void* absolute; void* classfix; void* thresh; void* rescore; void* jitter; void* max_boxes; void* background; void* softmax; void* sqrt; void* log; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 float FUNC1 (char*) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (char*) ; 

layer FUNC11(list *options, size_params params)
{
    int coords = FUNC4(options, "coords", 4);
    int classes = FUNC4(options, "classes", 20);
    int num = FUNC4(options, "num", 1);

    layer l = FUNC2(params.batch, params.w, params.h, num, classes, coords);
    FUNC0(l.outputs == params.inputs);

    l.log = FUNC5(options, "log", 0);
    l.sqrt = FUNC5(options, "sqrt", 0);

    l.softmax = FUNC4(options, "softmax", 0);
    l.background = FUNC5(options, "background", 0);
    l.max_boxes = FUNC5(options, "max",30);
    l.jitter = FUNC3(options, "jitter", .2);
    l.rescore = FUNC5(options, "rescore",0);

    l.thresh = FUNC3(options, "thresh", .5);
    l.classfix = FUNC5(options, "classfix", 0);
    l.absolute = FUNC5(options, "absolute", 0);
    l.random = FUNC5(options, "random", 0);

    l.coord_scale = FUNC3(options, "coord_scale", 1);
    l.object_scale = FUNC3(options, "object_scale", 1);
    l.noobject_scale = FUNC3(options, "noobject_scale", 1);
    l.mask_scale = FUNC3(options, "mask_scale", 1);
    l.class_scale = FUNC3(options, "class_scale", 1);
    l.bias_match = FUNC5(options, "bias_match",0);

    char *tree_file = FUNC6(options, "tree", 0);
    if (tree_file) l.softmax_tree = FUNC8(tree_file);
    char *map_file = FUNC6(options, "map", 0);
    if (map_file) l.map = FUNC7(map_file);

    char *a = FUNC6(options, "anchors", 0);
    if(a){
        int len = FUNC10(a);
        int n = 1;
        int i;
        for(i = 0; i < len; ++i){
            if (a[i] == ',') ++n;
        }
        for(i = 0; i < n; ++i){
            float bias = FUNC1(a);
            l.biases[i] = bias;
            a = FUNC9(a, ',')+1;
        }
    }
    return l;
}