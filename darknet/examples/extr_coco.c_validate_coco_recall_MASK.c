#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {double learning_rate; double momentum; double decay; int n; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_3__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_24__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_25__ {int classes; int side; int n; } ;
typedef  TYPE_3__ layer ;
struct TYPE_26__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ image ;
struct TYPE_27__ {float objectness; int /*<<< orphan*/  bbox; } ;
typedef  TYPE_5__ detection ;
struct TYPE_28__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_6__ box_label ;
struct TYPE_29__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_7__ box ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 float FUNC1 (int /*<<< orphan*/ ,TYPE_7__) ; 
 int /*<<< orphan*/ ** FUNC2 (int,int) ; 
 int /*<<< orphan*/ * coco_classes ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__) ; 
 TYPE_5__* FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 TYPE_2__* FUNC11 (char*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 TYPE_4__ FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC16 (char*,int*) ; 
 TYPE_4__ FUNC17 (TYPE_4__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

void FUNC22(char *cfgfile, char *weightfile)
{
    network *net = FUNC14(cfgfile, weightfile, 0);
    FUNC18(net, 1);
    FUNC6(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    FUNC20(FUNC21(0));

    char *base = "results/comp4_det_test_";
    list *plist = FUNC11("/home/pjreddie/data/voc/test/2007_test.txt");
    char **paths = (char **)FUNC12(plist);

    layer l = net->layers[net->n-1];
    int classes = l.classes;
    int side = l.side;

    int j, k;
    FILE **fps = FUNC2(classes, sizeof(FILE *));
    for(j = 0; j < classes; ++j){
        char buff[1024];
        FUNC19(buff, 1024, "%s%s.txt", base, coco_classes[j]);
        fps[j] = FUNC5(buff, "w");
    }

    int m = plist->size;
    int i=0;

    float thresh = .001;
    int nms = 0;
    float iou_thresh = .5;

    int total = 0;
    int correct = 0;
    int proposals = 0;
    float avg_iou = 0;

    for(i = 0; i < m; ++i){
        char *path = paths[i];
        image orig = FUNC13(path, 0, 0);
        image sized = FUNC17(orig, net->w, net->h);
        char *id = FUNC0(path);
        FUNC15(net, sized.data);

        int nboxes = 0;
        detection *dets = FUNC10(net, orig.w, orig.h, thresh, 0, 0, 1, &nboxes);
        if (nms) FUNC3(dets, side*side*l.n, 1, nms);

        char labelpath[4096];
        FUNC4(path, "images", "labels", labelpath);
        FUNC4(labelpath, "JPEGImages", "labels", labelpath);
        FUNC4(labelpath, ".jpg", ".txt", labelpath);
        FUNC4(labelpath, ".JPEG", ".txt", labelpath);

        int num_labels = 0;
        box_label *truth = FUNC16(labelpath, &num_labels);
        for(k = 0; k < side*side*l.n; ++k){
            if(dets[k].objectness > thresh){
                ++proposals;
            }
        }
        for (j = 0; j < num_labels; ++j) {
            ++total;
            box t = {truth[j].x, truth[j].y, truth[j].w, truth[j].h};
            float best_iou = 0;
            for(k = 0; k < side*side*l.n; ++k){
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
        FUNC8(dets, nboxes);
        FUNC6(stderr, "%5d %5d %5d\tRPs/Img: %.2f\tIOU: %.2f%%\tRecall:%.2f%%\n", i, correct, total, (float)proposals/(i+1), avg_iou*100/total, 100.*correct/total);
        FUNC7(id);
        FUNC9(orig);
        FUNC9(sized);
    }
}