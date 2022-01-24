#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int numload; int n; int c; int groups; int size; double* biases; double* scales; double* rolling_mean; double* rolling_variance; double* weights; scalar_t__ flipped; int /*<<< orphan*/  dontloadscales; scalar_t__ batch_normalize; scalar_t__ binary; } ;
typedef  TYPE_1__ layer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,double*,int) ; 
 int /*<<< orphan*/  FUNC1 (double*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ gpu_index ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (double*,int,int) ; 

void FUNC5(layer l, FILE *fp)
{
    if(l.binary){
        //load_convolutional_weights_binary(l, fp);
        //return;
    }
    if(l.numload) l.n = l.numload;
    int num = l.c/l.groups*l.n*l.size*l.size;
    FUNC1(l.biases, sizeof(float), l.n, fp);
    if (l.batch_normalize && (!l.dontloadscales)){
        FUNC1(l.scales, sizeof(float), l.n, fp);
        FUNC1(l.rolling_mean, sizeof(float), l.n, fp);
        FUNC1(l.rolling_variance, sizeof(float), l.n, fp);
        if(0){
            int i;
            for(i = 0; i < l.n; ++i){
                FUNC2("%g, ", l.rolling_mean[i]);
            }
            FUNC2("\n");
            for(i = 0; i < l.n; ++i){
                FUNC2("%g, ", l.rolling_variance[i]);
            }
            FUNC2("\n");
        }
        if(0){
            FUNC0(l.n, 0, l.rolling_mean, 1);
            FUNC0(l.n, 0, l.rolling_variance, 1);
        }
        if(0){
            int i;
            for(i = 0; i < l.n; ++i){
                FUNC2("%g, ", l.rolling_mean[i]);
            }
            FUNC2("\n");
            for(i = 0; i < l.n; ++i){
                FUNC2("%g, ", l.rolling_variance[i]);
            }
            FUNC2("\n");
        }
    }
    FUNC1(l.weights, sizeof(float), num, fp);
    //if(l.c == 3) scal_cpu(num, 1./256, l.weights, 1);
    if (l.flipped) {
        FUNC4(l.weights, l.c*l.size*l.size, l.n);
    }
    //if (l.binary) binarize_weights(l.weights, l.n, l.c*l.size*l.size, l.weights);
#ifdef GPU
    if(gpu_index >= 0){
        push_convolutional_layer(l);
    }
#endif
}