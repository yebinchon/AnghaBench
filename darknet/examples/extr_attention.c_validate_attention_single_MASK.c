#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int w; int h; int /*<<< orphan*/  hierarchy; int /*<<< orphan*/  outputs; } ;
typedef  TYPE_1__ network ;
struct TYPE_23__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_24__ {int w; int h; scalar_t__ data; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,float*,int,float*,int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,float*,int,float*,int) ; 
 TYPE_3__ FUNC4 (TYPE_3__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 char** FUNC7 (char*) ; 
 TYPE_2__* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 TYPE_3__ FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC13 (TYPE_1__*,scalar_t__) ; 
 int FUNC14 (TYPE_2__*,char*,int) ; 
 char* FUNC15 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 TYPE_2__* FUNC17 (char*) ; 
 TYPE_3__ FUNC18 (TYPE_3__,int,int) ; 
 TYPE_3__ FUNC19 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (float*,int,int,int*) ; 

void FUNC26(char *datacfg, char *filename, char *weightfile)
{
    int i, j;
    network *net = FUNC12(filename, weightfile, 0);
    FUNC20(net, 1);
    FUNC22(FUNC24(0));

    list *options = FUNC17(datacfg);

    char *label_list = FUNC15(options, "labels", "data/labels.list");
    char *leaf_list = FUNC15(options, "leaves", 0);
    if(leaf_list) FUNC2(net->hierarchy, leaf_list);
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
    int divs = 4;
    int size = 2;
    int extra = 0;
    float *avgs = FUNC1(classes, sizeof(float));
    int *inds = FUNC1(divs*divs, sizeof(int));

    for(i = 0; i < m; ++i){
        int class = -1;
        char *path = paths[i];
        for(j = 0; j < classes; ++j){
            if(FUNC23(path, labels[j])){
                class = j;
                break;
            }
        }
        image im = FUNC11(paths[i], 0, 0);
        image resized = FUNC19(im, net->w*divs/size);
        image crop = FUNC4(resized, (resized.w - net->w*divs/size)/2, (resized.h - net->h*divs/size)/2, net->w*divs/size, net->h*divs/size);
        image rcrop = FUNC18(crop, net->w, net->h);
        //show_image(im, "orig");
        //show_image(crop, "cropped");
        //cvWaitKey(0);
        float *pred = FUNC13(net, rcrop.data);
        //pred[classes + 56] = 0;
        for(j = 0; j < divs*divs; ++j){
            FUNC16("%.2f ", pred[classes + j]);
            if((j+1)%divs == 0) FUNC16("\n");
        }
        FUNC16("\n");
        FUNC3(classes, pred, 1, avgs, 1);
        FUNC25(pred + classes, divs*divs, divs*divs, inds);
        FUNC21(crop, "crop");
        for(j = 0; j < extra; ++j){
            int index = inds[j];
            int row = index / divs;
            int col = index % divs;
            int y = row * crop.h / divs - (net->h - crop.h/divs)/2;
            int x = col * crop.w / divs - (net->w - crop.w/divs)/2;
            FUNC16("%d %d %d %d\n", row, col, y, x);
            image tile = FUNC4(crop, x, y, net->w, net->h);
            float *pred = FUNC13(net, tile.data);
            FUNC0(classes, 1., pred, 1, avgs, 1);
            FUNC21(tile, "tile");
            //cvWaitKey(10);
        }
        if(net->hierarchy) FUNC9(pred, net->outputs, net->hierarchy, 1, 1);

        if(rcrop.data != resized.data) FUNC5(rcrop);
        if(resized.data != im.data) FUNC5(resized);
        FUNC5(im);
        FUNC5(crop);
        FUNC25(pred, classes, topk, indexes);

        if(indexes[0] == class) avg_acc += 1;
        for(j = 0; j < topk; ++j){
            if(indexes[j] == class) avg_topk += 1;
        }

        FUNC16("%d: top 1: %f, top %d: %f\n", i, avg_acc/(i+1), topk, avg_topk/(i+1));
    }
}