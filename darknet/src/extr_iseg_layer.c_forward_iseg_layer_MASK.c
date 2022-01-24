#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* truth; scalar_t__ gpu_index; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ network ;
struct TYPE_6__ {int extra; int* output; int outputs; int batch; int* delta; int classes; int w; int h; int* counts; int** sums; int truths; scalar_t__* cost; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  LOGISTIC ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,double*,int,int*,int) ; 
 float* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 double FUNC5 (double*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (double,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int,float,int*,int) ; 
 double FUNC11 () ; 

void FUNC12(const layer l, network net)
{

    double time = FUNC11();
    int i,b,j,k;
    int ids = l.extra;
    FUNC6(l.output, net.input, l.outputs*l.batch*sizeof(float));
    FUNC7(l.delta, 0, l.outputs * l.batch * sizeof(float));

#ifndef GPU
    for (b = 0; b < l.batch; ++b){
        int index = b*l.outputs;
        FUNC0(l.output + index, l.classes*l.w*l.h, LOGISTIC);
    }
#endif

    for (b = 0; b < l.batch; ++b){
        // a priori, each pixel has no class
        for(i = 0; i < l.classes; ++i){
            for(k = 0; k < l.w*l.h; ++k){
                int index = b*l.outputs + i*l.w*l.h + k;
                l.delta[index] = 0 - l.output[index];
            }
        }

        // a priori, embedding should be small magnitude
        for(i = 0; i < ids; ++i){
            for(k = 0; k < l.w*l.h; ++k){
                int index = b*l.outputs + (i+l.classes)*l.w*l.h + k;
                l.delta[index] = .1 * (0 - l.output[index]);
            }
        }


        FUNC7(l.counts, 0, 90*sizeof(int));
        for(i = 0; i < 90; ++i){
            FUNC3(ids, 0, l.sums[i], 1);
            
            int c = net.truth[b*l.truths + i*(l.w*l.h+1)];
            if(c < 0) break;
            // add up metric embeddings for each instance
            for(k = 0; k < l.w*l.h; ++k){
                int index = b*l.outputs + c*l.w*l.h + k;
                float v = net.truth[b*l.truths + i*(l.w*l.h + 1) + 1 + k];
                if(v){
                    l.delta[index] = v - l.output[index];
                    FUNC1(ids, 1, l.output + b*l.outputs + l.classes*l.w*l.h + k, l.w*l.h, l.sums[i], 1);
                    ++l.counts[i];
                }
            }
        }

        float *mse = FUNC2(90, sizeof(float));
        for(i = 0; i < 90; ++i){
            int c = net.truth[b*l.truths + i*(l.w*l.h+1)];
            if(c < 0) break;
            for(k = 0; k < l.w*l.h; ++k){
                float v = net.truth[b*l.truths + i*(l.w*l.h + 1) + 1 + k];
                if(v){
                    int z;
                    float sum = 0;
                    for(z = 0; z < ids; ++z){
                        int index = b*l.outputs + (l.classes + z)*l.w*l.h + k;
                        sum += FUNC8(l.sums[i][z]/l.counts[i] - l.output[index], 2);
                    }
                    mse[i] += sum;
                }
            }
            mse[i] /= l.counts[i];
        }

        // Calculate average embedding
        for(i = 0; i < 90; ++i){
            if(!l.counts[i]) continue;
            FUNC10(ids, 1.f/l.counts[i], l.sums[i], 1);
            if(b == 0 && net.gpu_index == 0){
                FUNC9("%4d, %6.3f, ", l.counts[i], mse[i]);
                for(j = 0; j < ids; ++j){
                    FUNC9("%6.3f,", l.sums[i][j]);
                }
                FUNC9("\n");
            }
        }
        FUNC4(mse);

        // Calculate embedding loss
        for(i = 0; i < 90; ++i){
            if(!l.counts[i]) continue;
            for(k = 0; k < l.w*l.h; ++k){
                float v = net.truth[b*l.truths + i*(l.w*l.h + 1) + 1 + k];
                if(v){
                    for(j = 0; j < 90; ++j){
                        if(!l.counts[j])continue;
                        int z;
                        for(z = 0; z < ids; ++z){
                            int index = b*l.outputs + (l.classes + z)*l.w*l.h + k;
                            float diff = l.sums[j][z] - l.output[index];
                            if (j == i) l.delta[index] +=   diff < 0? -.1 : .1;
                            else        l.delta[index] += -(diff < 0? -.1 : .1);
                        }
                    }
                }
            }
        }

        for(i = 0; i < ids; ++i){
            for(k = 0; k < l.w*l.h; ++k){
                int index = b*l.outputs + (i+l.classes)*l.w*l.h + k;
                l.delta[index] *= .01;
            }
        }
    }

    *(l.cost) = FUNC8(FUNC5(l.delta, l.outputs * l.batch), 2);
    FUNC9("took %lf sec\n", FUNC11() - time);
}