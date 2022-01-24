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
struct TYPE_9__ {scalar_t__ type; int out_w; int out_h; int size; int c; int n; int* biases; int outputs; int* weights; struct TYPE_9__* state_layer; struct TYPE_9__* update_layer; struct TYPE_9__* reset_layer; struct TYPE_9__* uh; struct TYPE_9__* ur; struct TYPE_9__* uz; struct TYPE_9__* wh; struct TYPE_9__* wr; struct TYPE_9__* wz; struct TYPE_9__* ug; struct TYPE_9__* uo; struct TYPE_9__* uf; struct TYPE_9__* ui; struct TYPE_9__* wg; struct TYPE_9__* wo; struct TYPE_9__* wf; struct TYPE_9__* wi; struct TYPE_9__* output_layer; struct TYPE_9__* self_layer; struct TYPE_9__* input_layer; scalar_t__ dontload; } ;
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ gpu_index ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void FUNC11(network *net, char *filename, int start, int cutoff)
{
#ifdef GPU
    if(net->gpu_index >= 0){
        cuda_set_device(net->gpu_index);
    }
#endif
    FUNC5(stderr, "Loading weights from %s...", filename);
    FUNC2(stdout);
    FILE *fp = FUNC4(filename, "rb");
    if(!fp) FUNC3(filename);

    int major;
    int minor;
    int revision;
    FUNC6(&major, sizeof(int), 1, fp);
    FUNC6(&minor, sizeof(int), 1, fp);
    FUNC6(&revision, sizeof(int), 1, fp);
    if ((major*10 + minor) >= 2 && major < 1000 && minor < 1000){
        FUNC6(net->seen, sizeof(size_t), 1, fp);
    } else {
        int iseen = 0;
        FUNC6(&iseen, sizeof(int), 1, fp);
        *net->seen = iseen;
    }
    int transpose = (major > 1000) || (minor > 1000);

    int i;
    for(i = start; i < net->n && i < cutoff; ++i){
        layer l = net->layers[i];
        if (l.dontload) continue;
        if(l.type == CONVOLUTIONAL || l.type == DECONVOLUTIONAL){
            FUNC9(l, fp);
        }
        if(l.type == CONNECTED){
            FUNC8(l, fp, transpose);
        }
        if(l.type == BATCHNORM){
            FUNC7(l, fp);
        }
        if(l.type == CRNN){
            FUNC9(*(l.input_layer), fp);
            FUNC9(*(l.self_layer), fp);
            FUNC9(*(l.output_layer), fp);
        }
        if(l.type == RNN){
            FUNC8(*(l.input_layer), fp, transpose);
            FUNC8(*(l.self_layer), fp, transpose);
            FUNC8(*(l.output_layer), fp, transpose);
        }
        if (l.type == LSTM) {
            FUNC8(*(l.wi), fp, transpose);
            FUNC8(*(l.wf), fp, transpose);
            FUNC8(*(l.wo), fp, transpose);
            FUNC8(*(l.wg), fp, transpose);
            FUNC8(*(l.ui), fp, transpose);
            FUNC8(*(l.uf), fp, transpose);
            FUNC8(*(l.uo), fp, transpose);
            FUNC8(*(l.ug), fp, transpose);
        }
        if (l.type == GRU) {
            if(1){
                FUNC8(*(l.wz), fp, transpose);
                FUNC8(*(l.wr), fp, transpose);
                FUNC8(*(l.wh), fp, transpose);
                FUNC8(*(l.uz), fp, transpose);
                FUNC8(*(l.ur), fp, transpose);
                FUNC8(*(l.uh), fp, transpose);
            }else{
                FUNC8(*(l.reset_layer), fp, transpose);
                FUNC8(*(l.update_layer), fp, transpose);
                FUNC8(*(l.state_layer), fp, transpose);
            }
        }
        if(l.type == LOCAL){
            int locations = l.out_w*l.out_h;
            int size = l.size*l.size*l.c*l.n*locations;
            FUNC6(l.biases, sizeof(float), l.outputs, fp);
            FUNC6(l.weights, sizeof(float), size, fp);
#ifdef GPU
            if(gpu_index >= 0){
                push_local_layer(l);
            }
#endif
        }
    }
    FUNC5(stderr, "Done!\n");
    FUNC1(fp);
}