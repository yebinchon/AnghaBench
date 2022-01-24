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
struct TYPE_18__ {int w; int /*<<< orphan*/  hierarchy; int /*<<< orphan*/  outputs; } ;
typedef  TYPE_1__ network ;
struct TYPE_19__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_20__ {int /*<<< orphan*/  data; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 char** FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 TYPE_3__ FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,char*,int) ; 
 char* FUNC11 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,float,int,float) ; 
 TYPE_2__* FUNC13 (char*) ; 
 TYPE_3__ FUNC14 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (float*,int,int,int*) ; 

void FUNC21(char *datacfg, char *filename, char *weightfile)
{
    int i, j;
    network *net = FUNC8(filename, weightfile, 0);
    FUNC16(net, 1);
    FUNC17(FUNC19(0));

    list *options = FUNC13(datacfg);

    char *label_list = FUNC11(options, "labels", "data/labels.list");
    char *valid_list = FUNC11(options, "valid", "data/train.list");
    int classes = FUNC10(options, "classes", 2);
    int topk = FUNC10(options, "top", 1);

    char **labels = FUNC3(label_list);
    list *plist = FUNC4(valid_list);

    char **paths = (char **)FUNC6(plist);
    int m = plist->size;
    FUNC2(plist);

    float avg_acc = 0;
    float avg_topk = 0;
    int *indexes = FUNC0(topk, sizeof(int));

    int size = net->w;
    for(i = 0; i < m; ++i){
        int class = -1;
        char *path = paths[i];
        for(j = 0; j < classes; ++j){
            if(FUNC18(path, labels[j])){
                class = j;
                break;
            }
        }
        image im = FUNC7(paths[i], 0, 0);
        image resized = FUNC14(im, size);
        FUNC15(net, resized.w, resized.h);
        //show_image(im, "orig");
        //show_image(crop, "cropped");
        //cvWaitKey(0);
        float *pred = FUNC9(net, resized.data);
        if(net->hierarchy) FUNC5(pred, net->outputs, net->hierarchy, 1, 1);

        FUNC1(im);
        FUNC1(resized);
        FUNC20(pred, classes, topk, indexes);

        if(indexes[0] == class) avg_acc += 1;
        for(j = 0; j < topk; ++j){
            if(indexes[j] == class) avg_topk += 1;
        }

        FUNC12("%d: top 1: %f, top %d: %f\n", i, avg_acc/(i+1), topk, avg_topk/(i+1));
    }
}