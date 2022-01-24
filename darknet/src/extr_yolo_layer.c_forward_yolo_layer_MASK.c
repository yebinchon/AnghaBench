#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int w; int h; int* truth; int index; int /*<<< orphan*/  train; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ network ;
struct TYPE_13__ {int outputs; int batch; int n; int w; int h; int classes; int* biases; int* mask; int max_boxes; int truths; float ignore_thresh; float truth_thresh; int* map; int total; scalar_t__* delta; scalar_t__* cost; scalar_t__* output; } ;
typedef  TYPE_2__ layer ;
struct TYPE_14__ {int x; int w; int h; int y; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ box ;

/* Variables and functions */
 int /*<<< orphan*/  LOGISTIC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 float FUNC1 (TYPE_3__,TYPE_3__) ; 
 float FUNC2 (TYPE_3__,scalar_t__*,int*,int,int,int,int,int,int,int,int,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int,int,int,int,float*) ; 
 int FUNC4 (TYPE_2__ const,int,int,int) ; 
 TYPE_3__ FUNC5 (int*,int) ; 
 TYPE_3__ FUNC6 (scalar_t__*,int*,int,int,int,int,int,int,int,int,int) ; 
 int FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,float,float,float,float,float,float,int) ; 

void FUNC13(const layer l, network net)
{
    int i,j,b,t,n;
    FUNC9(l.output, net.input, l.outputs*l.batch*sizeof(float));

#ifndef GPU
    for (b = 0; b < l.batch; ++b){
        for(n = 0; n < l.n; ++n){
            int index = FUNC4(l, b, n*l.w*l.h, 0);
            FUNC0(l.output + index, 2*l.w*l.h, LOGISTIC);
            index = FUNC4(l, b, n*l.w*l.h, 4);
            FUNC0(l.output + index, (1+l.classes)*l.w*l.h, LOGISTIC);
        }
    }
#endif

    FUNC10(l.delta, 0, l.outputs * l.batch * sizeof(float));
    if(!net.train) return;
    float avg_iou = 0;
    float recall = 0;
    float recall75 = 0;
    float avg_cat = 0;
    float avg_obj = 0;
    float avg_anyobj = 0;
    int count = 0;
    int class_count = 0;
    *(l.cost) = 0;
    for (b = 0; b < l.batch; ++b) {
        for (j = 0; j < l.h; ++j) {
            for (i = 0; i < l.w; ++i) {
                for (n = 0; n < l.n; ++n) {
                    int box_index = FUNC4(l, b, n*l.w*l.h + j*l.w + i, 0);
                    box pred = FUNC6(l.output, l.biases, l.mask[n], box_index, i, j, l.w, l.h, net.w, net.h, l.w*l.h);
                    float best_iou = 0;
                    int best_t = 0;
                    for(t = 0; t < l.max_boxes; ++t){
                        box truth = FUNC5(net.truth + t*(4 + 1) + b*l.truths, 1);
                        if(!truth.x) break;
                        float iou = FUNC1(pred, truth);
                        if (iou > best_iou) {
                            best_iou = iou;
                            best_t = t;
                        }
                    }
                    int obj_index = FUNC4(l, b, n*l.w*l.h + j*l.w + i, 4);
                    avg_anyobj += l.output[obj_index];
                    l.delta[obj_index] = 0 - l.output[obj_index];
                    if (best_iou > l.ignore_thresh) {
                        l.delta[obj_index] = 0;
                    }
                    if (best_iou > l.truth_thresh) {
                        l.delta[obj_index] = 1 - l.output[obj_index];

                        int class = net.truth[best_t*(4 + 1) + b*l.truths + 4];
                        if (l.map) class = l.map[class];
                        int class_index = FUNC4(l, b, n*l.w*l.h + j*l.w + i, 4 + 1);
                        FUNC3(l.output, l.delta, class_index, class, l.classes, l.w*l.h, 0);
                        box truth = FUNC5(net.truth + best_t*(4 + 1) + b*l.truths, 1);
                        FUNC2(truth, l.output, l.biases, l.mask[n], box_index, i, j, l.w, l.h, net.w, net.h, l.delta, (2-truth.w*truth.h), l.w*l.h);
                    }
                }
            }
        }
        for(t = 0; t < l.max_boxes; ++t){
            box truth = FUNC5(net.truth + t*(4 + 1) + b*l.truths, 1);

            if(!truth.x) break;
            float best_iou = 0;
            int best_n = 0;
            i = (truth.x * l.w);
            j = (truth.y * l.h);
            box truth_shift = truth;
            truth_shift.x = truth_shift.y = 0;
            for(n = 0; n < l.total; ++n){
                box pred = {0};
                pred.w = l.biases[2*n]/net.w;
                pred.h = l.biases[2*n+1]/net.h;
                float iou = FUNC1(pred, truth_shift);
                if (iou > best_iou){
                    best_iou = iou;
                    best_n = n;
                }
            }

            int mask_n = FUNC7(l.mask, best_n, l.n);
            if(mask_n >= 0){
                int box_index = FUNC4(l, b, mask_n*l.w*l.h + j*l.w + i, 0);
                float iou = FUNC2(truth, l.output, l.biases, best_n, box_index, i, j, l.w, l.h, net.w, net.h, l.delta, (2-truth.w*truth.h), l.w*l.h);

                int obj_index = FUNC4(l, b, mask_n*l.w*l.h + j*l.w + i, 4);
                avg_obj += l.output[obj_index];
                l.delta[obj_index] = 1 - l.output[obj_index];

                int class = net.truth[t*(4 + 1) + b*l.truths + 4];
                if (l.map) class = l.map[class];
                int class_index = FUNC4(l, b, mask_n*l.w*l.h + j*l.w + i, 4 + 1);
                FUNC3(l.output, l.delta, class_index, class, l.classes, l.w*l.h, &avg_cat);

                ++count;
                ++class_count;
                if(iou > .5) recall += 1;
                if(iou > .75) recall75 += 1;
                avg_iou += iou;
            }
        }
    }
    *(l.cost) = FUNC11(FUNC8(l.delta, l.outputs * l.batch), 2);
    FUNC12("Region %d Avg IOU: %f, Class: %f, Obj: %f, No Obj: %f, .5R: %f, .75R: %f,  count: %d\n", net.index, avg_iou/count, avg_cat/class_count, avg_obj/count, avg_anyobj/(l.w*l.h*l.n*l.batch), recall/count, recall75/count, count);
}