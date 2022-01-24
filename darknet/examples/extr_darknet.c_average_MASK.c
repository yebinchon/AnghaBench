#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int n; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_7__ {scalar_t__ type; int n; int c; int size; int outputs; int inputs; int /*<<< orphan*/  weights; int /*<<< orphan*/  biases; int /*<<< orphan*/  rolling_variance; int /*<<< orphan*/  rolling_mean; int /*<<< orphan*/  scales; scalar_t__ batch_normalize; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 scalar_t__ CONNECTED ; 
 scalar_t__ CONVOLUTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int gpu_index ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int) ; 

void FUNC5(int argc, char *argv[])
{
    char *cfgfile = argv[2];
    char *outfile = argv[3];
    gpu_index = -1;
    network *net = FUNC2(cfgfile);
    network *sum = FUNC2(cfgfile);

    char *weightfile = argv[4];   
    FUNC1(sum, weightfile);

    int i, j;
    int n = argc - 5;
    for(i = 0; i < n; ++i){
        weightfile = argv[i+5];   
        FUNC1(net, weightfile);
        for(j = 0; j < net->n; ++j){
            layer l = net->layers[j];
            layer out = sum->layers[j];
            if(l.type == CONVOLUTIONAL){
                int num = l.n*l.c*l.size*l.size;
                FUNC0(l.n, 1, l.biases, 1, out.biases, 1);
                FUNC0(num, 1, l.weights, 1, out.weights, 1);
                if(l.batch_normalize){
                    FUNC0(l.n, 1, l.scales, 1, out.scales, 1);
                    FUNC0(l.n, 1, l.rolling_mean, 1, out.rolling_mean, 1);
                    FUNC0(l.n, 1, l.rolling_variance, 1, out.rolling_variance, 1);
                }
            }
            if(l.type == CONNECTED){
                FUNC0(l.outputs, 1, l.biases, 1, out.biases, 1);
                FUNC0(l.outputs*l.inputs, 1, l.weights, 1, out.weights, 1);
            }
        }
    }
    n = n+1;
    for(j = 0; j < net->n; ++j){
        layer l = sum->layers[j];
        if(l.type == CONVOLUTIONAL){
            int num = l.n*l.c*l.size*l.size;
            FUNC4(l.n, 1./n, l.biases, 1);
            FUNC4(num, 1./n, l.weights, 1);
                if(l.batch_normalize){
                    FUNC4(l.n, 1./n, l.scales, 1);
                    FUNC4(l.n, 1./n, l.rolling_mean, 1);
                    FUNC4(l.n, 1./n, l.rolling_variance, 1);
                }
        }
        if(l.type == CONNECTED){
            FUNC4(l.outputs, 1./n, l.biases, 1);
            FUNC4(l.outputs*l.inputs, 1./n, l.weights, 1);
        }
    }
    FUNC3(sum, outfile);
}