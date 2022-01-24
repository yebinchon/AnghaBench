#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int w; int h; int /*<<< orphan*/  hierarchy; int /*<<< orphan*/  outputs; } ;
typedef  TYPE_1__ network ;
struct TYPE_19__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_20__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,float*,int,float*,int) ; 
 void* FUNC1 (int,int) ; 
 TYPE_3__ FUNC2 (TYPE_3__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 char** FUNC7 (char*) ; 
 TYPE_2__* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 TYPE_3__ FUNC11 (char*,int,int) ; 
 TYPE_1__* FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_2__*,char*,int) ; 
 char* FUNC15 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,float,int,float) ; 
 TYPE_2__* FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (float*,int,int,int*) ; 

void FUNC23(char *datacfg, char *filename, char *weightfile)
{
    int i, j;
    network *net = FUNC12(filename, weightfile, 0);
    FUNC18(net, 1);
    FUNC19(FUNC21(0));

    list *options = FUNC17(datacfg);

    char *label_list = FUNC15(options, "labels", "data/labels.list");
    char *valid_list = FUNC15(options, "valid", "data/train.list");
    int classes = FUNC14(options, "classes", 2);
    int topk = FUNC14(options, "top", 1);

    char **labels = FUNC7(label_list);
    list *plist = FUNC8(valid_list);

    char **paths = (char **)FUNC10(plist);
    int m = plist->size;
    FUNC6(plist);

    float avg_acc = 0;
    float avg_topk = 0;
    int *indexes = FUNC1(topk, sizeof(int));

    for(i = 0; i < m; ++i){
        int class = -1;
        char *path = paths[i];
        for(j = 0; j < classes; ++j){
            if(FUNC20(path, labels[j])){
                class = j;
                break;
            }
        }
        int w = net->w;
        int h = net->h;
        int shift = 32;
        image im = FUNC11(paths[i], w+shift, h+shift);
        image images[10];
        images[0] = FUNC2(im, -shift, -shift, w, h);
        images[1] = FUNC2(im, shift, -shift, w, h);
        images[2] = FUNC2(im, 0, 0, w, h);
        images[3] = FUNC2(im, -shift, shift, w, h);
        images[4] = FUNC2(im, shift, shift, w, h);
        FUNC3(im);
        images[5] = FUNC2(im, -shift, -shift, w, h);
        images[6] = FUNC2(im, shift, -shift, w, h);
        images[7] = FUNC2(im, 0, 0, w, h);
        images[8] = FUNC2(im, -shift, shift, w, h);
        images[9] = FUNC2(im, shift, shift, w, h);
        float *pred = FUNC1(classes, sizeof(float));
        for(j = 0; j < 10; ++j){
            float *p = FUNC13(net, images[j].data);
            if(net->hierarchy) FUNC9(p, net->outputs, net->hierarchy, 1, 1);
            FUNC0(classes, 1, p, 1, pred, 1);
            FUNC5(images[j]);
        }
        FUNC5(im);
        FUNC22(pred, classes, topk, indexes);
        FUNC4(pred);
        if(indexes[0] == class) avg_acc += 1;
        for(j = 0; j < topk; ++j){
            if(indexes[j] == class) avg_topk += 1;
        }

        FUNC16("%d: top 1: %f, top %d: %f\n", i, avg_acc/(i+1), topk, avg_topk/(i+1));
    }
}