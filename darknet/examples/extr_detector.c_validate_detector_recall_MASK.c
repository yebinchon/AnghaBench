#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {double learning_rate; double momentum; double decay; int n; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_3__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_23__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_24__ {int w; int h; int n; } ;
typedef  TYPE_3__ layer ;
struct TYPE_25__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ image ;
struct TYPE_26__ {float objectness; int /*<<< orphan*/  bbox; } ;
typedef  TYPE_5__ detection ;
struct TYPE_27__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_6__ box_label ;
struct TYPE_28__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_7__ box ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 float FUNC1 (int /*<<< orphan*/ ,TYPE_7__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int,int,float) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__) ; 
 TYPE_5__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,double,int /*<<< orphan*/ ,int,int*) ; 
 TYPE_2__* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 TYPE_4__ FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC13 (char*,int*) ; 
 TYPE_4__ FUNC14 (TYPE_4__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

void FUNC18(char *cfgfile, char *weightfile)
{
    network *net = FUNC11(cfgfile, weightfile, 0);
    FUNC15(net, 1);
    FUNC4(stderr, "Learning Rate: %d, Momentum: %d, Decay: %d\n", net->learning_rate, net->momentum, net->decay);
    FUNC16(FUNC17(0));

    list *plist = FUNC8("data/coco_val_5k.list");
    char **paths = (char **)FUNC9(plist);

    layer l = net->layers[net->n-1];

    int j, k;

    int m = plist->size;
    int i=0;

    float thresh = .001;
    float iou_thresh = .5;
    float nms = .4;

    int total = 0;
    int correct = 0;
    int proposals = 0;
    float avg_iou = 0;

    for(i = 0; i < m; ++i){
        char *path = paths[i];
        image orig = FUNC10(path, 0, 0);
        image sized = FUNC14(orig, net->w, net->h);
        char *id = FUNC0(path);
        FUNC12(net, sized.data);
        int nboxes = 0;
        detection *dets = FUNC7(net, sized.w, sized.h, thresh, .5, 0, 1, &nboxes);
        if (nms) FUNC2(dets, nboxes, 1, nms);

        char labelpath[4096];
        FUNC3(path, "images", "labels", labelpath);
        FUNC3(labelpath, "JPEGImages", "labels", labelpath);
        FUNC3(labelpath, ".jpg", ".txt", labelpath);
        FUNC3(labelpath, ".JPEG", ".txt", labelpath);

        int num_labels = 0;
        box_label *truth = FUNC13(labelpath, &num_labels);
        for(k = 0; k < nboxes; ++k){
            if(dets[k].objectness > thresh){
                ++proposals;
            }
        }
        for (j = 0; j < num_labels; ++j) {
            ++total;
            box t = {truth[j].x, truth[j].y, truth[j].w, truth[j].h};
            float best_iou = 0;
            for(k = 0; k < l.w*l.h*l.n; ++k){
                float iou = FUNC1(dets[k].bbox, t);
                if(dets[k].objectness > thresh && iou > best_iou){
                    best_iou = iou;
                }
            }
            avg_iou += best_iou;
            if(best_iou > iou_thresh){
                ++correct;
            }
        }

        FUNC4(stderr, "%5d %5d %5d\tRPs/Img: %.2f\tIOU: %.2f%%\tRecall:%.2f%%\n", i, correct, total, (float)proposals/(i+1), avg_iou*100/total, 100.*correct/total);
        FUNC5(id);
        FUNC6(orig);
        FUNC6(sized);
    }
}