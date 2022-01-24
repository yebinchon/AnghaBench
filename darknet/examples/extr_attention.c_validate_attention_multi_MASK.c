#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  scales ;
struct TYPE_19__ {int /*<<< orphan*/  hierarchy; int /*<<< orphan*/  outputs; } ;
typedef  TYPE_1__ network ;
struct TYPE_20__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_21__ {scalar_t__ data; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,float*,int,float*,int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 char** FUNC6 (char*) ; 
 TYPE_2__* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 TYPE_3__ FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC12 (TYPE_1__*,scalar_t__) ; 
 int FUNC13 (TYPE_2__*,char*,int) ; 
 char* FUNC14 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,float,int,float) ; 
 TYPE_2__* FUNC16 (char*) ; 
 TYPE_3__ FUNC17 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (float*,int,int,int*) ; 

void FUNC24(char *datacfg, char *filename, char *weightfile)
{
    int i, j;
    network *net = FUNC11(filename, weightfile, 0);
    FUNC19(net, 1);
    FUNC20(FUNC22(0));

    list *options = FUNC16(datacfg);

    char *label_list = FUNC14(options, "labels", "data/labels.list");
    char *valid_list = FUNC14(options, "valid", "data/train.list");
    int classes = FUNC13(options, "classes", 2);
    int topk = FUNC13(options, "top", 1);

    char **labels = FUNC6(label_list);
    list *plist = FUNC7(valid_list);
    int scales[] = {224, 288, 320, 352, 384};
    int nscales = sizeof(scales)/sizeof(scales[0]);

    char **paths = (char **)FUNC9(plist);
    int m = plist->size;
    FUNC5(plist);

    float avg_acc = 0;
    float avg_topk = 0;
    int *indexes = FUNC1(topk, sizeof(int));

    for(i = 0; i < m; ++i){
        int class = -1;
        char *path = paths[i];
        for(j = 0; j < classes; ++j){
            if(FUNC21(path, labels[j])){
                class = j;
                break;
            }
        }
        float *pred = FUNC1(classes, sizeof(float));
        image im = FUNC10(paths[i], 0, 0);
        for(j = 0; j < nscales; ++j){
            image r = FUNC17(im, scales[j]);
            FUNC18(net, r.w, r.h);
            float *p = FUNC12(net, r.data);
            if(net->hierarchy) FUNC8(p, net->outputs, net->hierarchy, 1 , 1);
            FUNC0(classes, 1, p, 1, pred, 1);
            FUNC2(r);
            p = FUNC12(net, r.data);
            FUNC0(classes, 1, p, 1, pred, 1);
            if(r.data != im.data) FUNC4(r);
        }
        FUNC4(im);
        FUNC23(pred, classes, topk, indexes);
        FUNC3(pred);
        if(indexes[0] == class) avg_acc += 1;
        for(j = 0; j < topk; ++j){
            if(indexes[j] == class) avg_topk += 1;
        }

        FUNC15("%d: top 1: %f, top %d: %f\n", i, avg_acc/(i+1), topk, avg_topk/(i+1));
    }
}