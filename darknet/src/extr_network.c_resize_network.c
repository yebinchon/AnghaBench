
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int w; int h; int n; int inputs; int outputs; int truths; int batch; void* workspace; void* truth; void* truth_gpu; void* input; void* input_gpu; int output; TYPE_2__* layers; int gpu_index; } ;
typedef TYPE_1__ network ;
struct TYPE_20__ {scalar_t__ type; size_t workspace_size; int outputs; int out_w; int out_h; int inputs; int truths; int output; } ;
typedef TYPE_2__ layer ;


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
 int assert (int ) ;
 void* calloc (int,size_t) ;
 int cuda_free (void*) ;
 void* cuda_make_array (void*,size_t) ;
 int cuda_set_device (int ) ;
 int error (char*) ;
 int free (void*) ;
 TYPE_2__ get_network_output_layer (TYPE_1__*) ;
 scalar_t__ gpu_index ;
 int resize_avgpool_layer (TYPE_2__*,int,int) ;
 int resize_convolutional_layer (TYPE_2__*,int,int) ;
 int resize_cost_layer (TYPE_2__*,int) ;
 int resize_crop_layer (TYPE_2__*,int,int) ;
 int resize_maxpool_layer (TYPE_2__*,int,int) ;
 int resize_normalization_layer (TYPE_2__*,int,int) ;
 int resize_region_layer (TYPE_2__*,int,int) ;
 int resize_reorg_layer (TYPE_2__*,int,int) ;
 int resize_route_layer (TYPE_2__*,TYPE_1__*) ;
 int resize_shortcut_layer (TYPE_2__*,int,int) ;
 int resize_upsample_layer (TYPE_2__*,int,int) ;
 int resize_yolo_layer (TYPE_2__*,int,int) ;

int resize_network(network *net, int w, int h)
{




    int i;

    net->w = w;
    net->h = h;
    int inputs = 0;
    size_t workspace_size = 0;


    for (i = 0; i < net->n; ++i){
        layer l = net->layers[i];
        if(l.type == CONVOLUTIONAL){
            resize_convolutional_layer(&l, w, h);
        }else if(l.type == CROP){
            resize_crop_layer(&l, w, h);
        }else if(l.type == MAXPOOL){
            resize_maxpool_layer(&l, w, h);
        }else if(l.type == REGION){
            resize_region_layer(&l, w, h);
        }else if(l.type == YOLO){
            resize_yolo_layer(&l, w, h);
        }else if(l.type == ROUTE){
            resize_route_layer(&l, net);
        }else if(l.type == SHORTCUT){
            resize_shortcut_layer(&l, w, h);
        }else if(l.type == UPSAMPLE){
            resize_upsample_layer(&l, w, h);
        }else if(l.type == REORG){
            resize_reorg_layer(&l, w, h);
        }else if(l.type == AVGPOOL){
            resize_avgpool_layer(&l, w, h);
        }else if(l.type == NORMALIZATION){
            resize_normalization_layer(&l, w, h);
        }else if(l.type == COST){
            resize_cost_layer(&l, inputs);
        }else{
            error("Cannot resize this type of layer");
        }
        if(l.workspace_size > workspace_size) workspace_size = l.workspace_size;
        if(l.workspace_size > 2000000000) assert(0);
        inputs = l.outputs;
        net->layers[i] = l;
        w = l.out_w;
        h = l.out_h;
        if(l.type == AVGPOOL) break;
    }
    layer out = get_network_output_layer(net);
    net->inputs = net->layers[0].inputs;
    net->outputs = out.outputs;
    net->truths = out.outputs;
    if(net->layers[net->n-1].truths) net->truths = net->layers[net->n-1].truths;
    net->output = out.output;
    free(net->input);
    free(net->truth);
    net->input = calloc(net->inputs*net->batch, sizeof(float));
    net->truth = calloc(net->truths*net->batch, sizeof(float));
    free(net->workspace);
    net->workspace = calloc(1, workspace_size);


    return 0;
}
