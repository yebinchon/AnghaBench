#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ gpu_index; int* seen; int n; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_9__ {scalar_t__ type; int out_w; int out_h; int size; int c; int n; int* biases; int outputs; int* weights; struct TYPE_9__* output_layer; struct TYPE_9__* self_layer; struct TYPE_9__* input_layer; struct TYPE_9__* state_layer; struct TYPE_9__* update_layer; struct TYPE_9__* reset_layer; struct TYPE_9__* uh; struct TYPE_9__* ur; struct TYPE_9__* uz; struct TYPE_9__* wh; struct TYPE_9__* wr; struct TYPE_9__* wz; struct TYPE_9__* ug; struct TYPE_9__* uo; struct TYPE_9__* uf; struct TYPE_9__* ui; struct TYPE_9__* wg; struct TYPE_9__* wo; struct TYPE_9__* wf; struct TYPE_9__* wi; scalar_t__ dontsave; } ;
typedef  TYPE_2__ layer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ BATCHNORM ; 
 scalar_t__ CONNECTED ; 
 scalar_t__ CONVOLUTIONAL ; 
 scalar_t__ CRNN ; 
 scalar_t__ DECONVOLUTIONAL ; 
 scalar_t__ GRU ; 
 scalar_t__ LOCAL ; 
 scalar_t__ LSTM ; 
 scalar_t__ RNN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ gpu_index ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC10(network *net, char *filename, int cutoff)
{
#ifdef GPU
    if(net->gpu_index >= 0){
        cuda_set_device(net->gpu_index);
    }
#endif
    FUNC4(stderr, "Saving weights to %s\n", filename);
    FILE *fp = FUNC3(filename, "wb");
    if(!fp) FUNC2(filename);

    int major = 0;
    int minor = 2;
    int revision = 0;
    FUNC5(&major, sizeof(int), 1, fp);
    FUNC5(&minor, sizeof(int), 1, fp);
    FUNC5(&revision, sizeof(int), 1, fp);
    FUNC5(net->seen, sizeof(size_t), 1, fp);

    int i;
    for(i = 0; i < net->n && i < cutoff; ++i){
        layer l = net->layers[i];
        if (l.dontsave) continue;
        if(l.type == CONVOLUTIONAL || l.type == DECONVOLUTIONAL){
            FUNC9(l, fp);
        } if(l.type == CONNECTED){
            FUNC8(l, fp);
        } if(l.type == BATCHNORM){
            FUNC7(l, fp);
        } if(l.type == RNN){
            FUNC8(*(l.input_layer), fp);
            FUNC8(*(l.self_layer), fp);
            FUNC8(*(l.output_layer), fp);
        } if (l.type == LSTM) {
            FUNC8(*(l.wi), fp);
            FUNC8(*(l.wf), fp);
            FUNC8(*(l.wo), fp);
            FUNC8(*(l.wg), fp);
            FUNC8(*(l.ui), fp);
            FUNC8(*(l.uf), fp);
            FUNC8(*(l.uo), fp);
            FUNC8(*(l.ug), fp);
        } if (l.type == GRU) {
            if(1){
                FUNC8(*(l.wz), fp);
                FUNC8(*(l.wr), fp);
                FUNC8(*(l.wh), fp);
                FUNC8(*(l.uz), fp);
                FUNC8(*(l.ur), fp);
                FUNC8(*(l.uh), fp);
            }else{
                FUNC8(*(l.reset_layer), fp);
                FUNC8(*(l.update_layer), fp);
                FUNC8(*(l.state_layer), fp);
            }
        }  if(l.type == CRNN){
            FUNC9(*(l.input_layer), fp);
            FUNC9(*(l.self_layer), fp);
            FUNC9(*(l.output_layer), fp);
        } if(l.type == LOCAL){
#ifdef GPU
            if(gpu_index >= 0){
                pull_local_layer(l);
            }
#endif
            int locations = l.out_w*l.out_h;
            int size = l.size*l.size*l.c*l.n*locations;
            FUNC5(l.biases, sizeof(float), l.outputs, fp);
            FUNC5(l.weights, sizeof(float), size, fp);
        }
    }
    FUNC1(fp);
}