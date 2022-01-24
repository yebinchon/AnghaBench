#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  hierarchy; int /*<<< orphan*/  outputs; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
struct TYPE_18__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_19__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 int* FUNC0 (int,int) ; 
 TYPE_3__ FUNC1 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 char** FUNC5 (char*) ; 
 TYPE_2__* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 TYPE_3__ FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,char*,int) ; 
 char* FUNC13 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 TYPE_2__* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (float*,int,int,int*) ; 

void FUNC21(char *datacfg, char *filename, char *weightfile)
{
    int i, j;
    network *net = FUNC10(filename, weightfile, 0);
    FUNC16(net, 1);
    FUNC17(FUNC19(0));

    list *options = FUNC15(datacfg);

    char *label_list = FUNC13(options, "labels", "data/labels.list");
    char *leaf_list = FUNC13(options, "leaves", 0);
    if(leaf_list) FUNC2(net->hierarchy, leaf_list);
    char *valid_list = FUNC13(options, "valid", "data/train.list");
    int classes = FUNC12(options, "classes", 2);
    int topk = FUNC12(options, "top", 1);

    char **labels = FUNC5(label_list);
    list *plist = FUNC6(valid_list);

    char **paths = (char **)FUNC8(plist);
    int m = plist->size;
    FUNC4(plist);

    float avg_acc = 0;
    float avg_topk = 0;
    int *indexes = FUNC0(topk, sizeof(int));

    for(i = 0; i < m; ++i){
        int class = -1;
        char *path = paths[i];
        for(j = 0; j < classes; ++j){
            if(FUNC18(path, labels[j])){
                class = j;
                break;
            }
        }
        image im = FUNC9(paths[i], 0, 0);
        image crop = FUNC1(im, net->w, net->h);
        //grayscale_image_3c(crop);
        //show_image(im, "orig");
        //show_image(crop, "cropped");
        //cvWaitKey(0);
        float *pred = FUNC11(net, crop.data);
        if(net->hierarchy) FUNC7(pred, net->outputs, net->hierarchy, 1, 1);

        FUNC3(im);
        FUNC3(crop);
        FUNC20(pred, classes, topk, indexes);

        if(indexes[0] == class) avg_acc += 1;
        for(j = 0; j < topk; ++j){
            if(indexes[j] == class) avg_topk += 1;
        }

        FUNC14("%s, %d, %f, %f, \n", paths[i], class, pred[0], pred[1]);
        FUNC14("%d: top 1: %f, top %d: %f\n", i, avg_acc/(i+1), topk, avg_topk/(i+1));
    }
}