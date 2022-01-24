#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float* output; int batch; int outputs; int h; int w; int n; int classes; int coords; int /*<<< orphan*/  softmax_tree; scalar_t__ background; int /*<<< orphan*/  biases; } ;
typedef  TYPE_1__ layer ;
struct TYPE_8__ {float* prob; float objectness; float* mask; int /*<<< orphan*/  bbox; } ;
typedef  TYPE_2__ detection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int,int,int,int,int) ; 
 int FUNC1 (TYPE_1__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (float*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (float*,int /*<<< orphan*/ ,float,int) ; 

void FUNC5(layer l, int w, int h, int netw, int neth, float thresh, int *map, float tree_thresh, int relative, detection *dets)
{
    int i,j,n,z;
    float *predictions = l.output;
    if (l.batch == 2) {
        float *flip = l.output + l.outputs;
        for (j = 0; j < l.h; ++j) {
            for (i = 0; i < l.w/2; ++i) {
                for (n = 0; n < l.n; ++n) {
                    for(z = 0; z < l.classes + l.coords + 1; ++z){
                        int i1 = z*l.w*l.h*l.n + n*l.w*l.h + j*l.w + i;
                        int i2 = z*l.w*l.h*l.n + n*l.w*l.h + j*l.w + (l.w - i - 1);
                        float swap = flip[i1];
                        flip[i1] = flip[i2];
                        flip[i2] = swap;
                        if(z == 0){
                            flip[i1] = -flip[i1];
                            flip[i2] = -flip[i2];
                        }
                    }
                }
            }
        }
        for(i = 0; i < l.outputs; ++i){
            l.output[i] = (l.output[i] + flip[i])/2.;
        }
    }
    for (i = 0; i < l.w*l.h; ++i){
        int row = i / l.w;
        int col = i % l.w;
        for(n = 0; n < l.n; ++n){
            int index = n*l.w*l.h + i;
            for(j = 0; j < l.classes; ++j){
                dets[index].prob[j] = 0;
            }
            int obj_index  = FUNC1(l, 0, n*l.w*l.h + i, l.coords);
            int box_index  = FUNC1(l, 0, n*l.w*l.h + i, 0);
            int mask_index = FUNC1(l, 0, n*l.w*l.h + i, 4);
            float scale = l.background ? 1 : predictions[obj_index];
            dets[index].bbox = FUNC2(predictions, l.biases, n, box_index, col, row, l.w, l.h, l.w*l.h);
            dets[index].objectness = scale > thresh ? scale : 0;
            if(dets[index].mask){
                for(j = 0; j < l.coords - 4; ++j){
                    dets[index].mask[j] = l.output[mask_index + j*l.w*l.h];
                }
            }

            int class_index = FUNC1(l, 0, n*l.w*l.h + i, l.coords + !l.background);
            if(l.softmax_tree){

                FUNC3(predictions + class_index, l.classes, l.softmax_tree, 0, l.w*l.h);
                if(map){
                    for(j = 0; j < 200; ++j){
                        int class_index = FUNC1(l, 0, n*l.w*l.h + i, l.coords + 1 + map[j]);
                        float prob = scale*predictions[class_index];
                        dets[index].prob[j] = (prob > thresh) ? prob : 0;
                    }
                } else {
                    int j =  FUNC4(predictions + class_index, l.softmax_tree, tree_thresh, l.w*l.h);
                    dets[index].prob[j] = (scale > thresh) ? scale : 0;
                }
            } else {
                if(dets[index].objectness){
                    for(j = 0; j < l.classes; ++j){
                        int class_index = FUNC1(l, 0, n*l.w*l.h + i, l.coords + 1 + j);
                        float prob = scale*predictions[class_index];
                        dets[index].prob[j] = (prob > thresh) ? prob : 0;
                    }
                }
            }
        }
    }
    FUNC0(dets, l.w*l.h*l.n, w, h, netw, neth, relative);
}