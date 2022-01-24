#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int w; int h; int n; int inputs; int outputs; int truths; int batch; void* workspace; void* truth; void* truth_gpu; void* input; void* input_gpu; int /*<<< orphan*/  output; TYPE_2__* layers; int /*<<< orphan*/  gpu_index; } ;
typedef  TYPE_1__ network ;
struct TYPE_20__ {scalar_t__ type; size_t workspace_size; int outputs; int out_w; int out_h; int inputs; int truths; int /*<<< orphan*/  output; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 scalar_t__ AVGPOOL ; 
 scalar_t__ CONVOLUTIONAL ; 
 scalar_t__ COST ; 
 scalar_t__ CROP ; 
 scalar_t__ MAXPOOL ; 
 scalar_t__ NORMALIZATION ; 
 scalar_t__ REGION ; 
 scalar_t__ REORG ; 
 scalar_t__ ROUTE ; 
 scalar_t__ SHORTCUT ; 
 scalar_t__ UPSAMPLE ; 
 scalar_t__ YOLO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 TYPE_2__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ gpu_index ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int,int) ; 

int FUNC20(network *net, int w, int h)
{
#ifdef GPU
    cuda_set_device(net->gpu_index);
    cuda_free(net->workspace);
#endif
    int i;
    //if(w == net->w && h == net->h) return 0;
    net->w = w;
    net->h = h;
    int inputs = 0;
    size_t workspace_size = 0;
    //fprintf(stderr, "Resizing to %d x %d...\n", w, h);
    //fflush(stderr);
    for (i = 0; i < net->n; ++i){
        layer l = net->layers[i];
        if(l.type == CONVOLUTIONAL){
            FUNC9(&l, w, h);
        }else if(l.type == CROP){
            FUNC11(&l, w, h);
        }else if(l.type == MAXPOOL){
            FUNC12(&l, w, h);
        }else if(l.type == REGION){
            FUNC14(&l, w, h);
        }else if(l.type == YOLO){
            FUNC19(&l, w, h);
        }else if(l.type == ROUTE){
            FUNC16(&l, net);
        }else if(l.type == SHORTCUT){
            FUNC17(&l, w, h);
        }else if(l.type == UPSAMPLE){
            FUNC18(&l, w, h);
        }else if(l.type == REORG){
            FUNC15(&l, w, h);
        }else if(l.type == AVGPOOL){
            FUNC8(&l, w, h);
        }else if(l.type == NORMALIZATION){
            FUNC13(&l, w, h);
        }else if(l.type == COST){
            FUNC10(&l, inputs);
        }else{
            FUNC5("Cannot resize this type of layer");
        }
        if(l.workspace_size > workspace_size) workspace_size = l.workspace_size;
        if(l.workspace_size > 2000000000) FUNC0(0);
        inputs = l.outputs;
        net->layers[i] = l;
        w = l.out_w;
        h = l.out_h;
        if(l.type == AVGPOOL) break;
    }
    layer out = FUNC7(net);
    net->inputs = net->layers[0].inputs;
    net->outputs = out.outputs;
    net->truths = out.outputs;
    if(net->layers[net->n-1].truths) net->truths = net->layers[net->n-1].truths;
    net->output = out.output;
    FUNC6(net->input);
    FUNC6(net->truth);
    net->input = FUNC1(net->inputs*net->batch, sizeof(float));
    net->truth = FUNC1(net->truths*net->batch, sizeof(float));
#ifdef GPU
    if(gpu_index >= 0){
        cuda_free(net->input_gpu);
        cuda_free(net->truth_gpu);
        net->input_gpu = cuda_make_array(net->input, net->inputs*net->batch);
        net->truth_gpu = cuda_make_array(net->truth, net->truths*net->batch);
        if(workspace_size){
            net->workspace = cuda_make_array(0, (workspace_size-1)/sizeof(float)+1);
        }
    }else {
        free(net->workspace);
        net->workspace = calloc(1, workspace_size);
    }
#else
    FUNC6(net->workspace);
    net->workspace = FUNC1(1, workspace_size);
#endif
    //fprintf(stderr, " Done!\n");
    return 0;
}