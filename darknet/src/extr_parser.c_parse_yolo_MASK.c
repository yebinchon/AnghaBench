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
struct TYPE_7__ {scalar_t__ outputs; float* biases; int /*<<< orphan*/  map; void* random; void* truth_thresh; void* ignore_thresh; void* jitter; void* max_boxes; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 float FUNC1 (char*) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int* FUNC7 (char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (char*) ; 

layer FUNC11(list *options, size_params params)
{
    int classes = FUNC4(options, "classes", 20);
    int total = FUNC4(options, "num", 1);
    int num = total;

    char *a = FUNC6(options, "mask", 0);
    int *mask = FUNC7(a, &num);
    layer l = FUNC2(params.batch, params.w, params.h, num, total, mask, classes);
    FUNC0(l.outputs == params.inputs);

    l.max_boxes = FUNC5(options, "max",90);
    l.jitter = FUNC3(options, "jitter", .2);

    l.ignore_thresh = FUNC3(options, "ignore_thresh", .5);
    l.truth_thresh = FUNC3(options, "truth_thresh", 1);
    l.random = FUNC5(options, "random", 0);

    char *map_file = FUNC6(options, "map", 0);
    if (map_file) l.map = FUNC8(map_file);

    a = FUNC6(options, "anchors", 0);
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