
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t out_w; size_t size; size_t c; size_t groups; scalar_t__ out_h; int bd_algo; int dsrcTensorDesc; int convDesc; int ddstTensorDesc; int weightDesc; int bf_algo; int dweightDesc; int srcTensorDesc; int fw_algo; int dstTensorDesc; } ;
typedef TYPE_1__ layer ;


 int cudnnGetConvolutionBackwardDataWorkspaceSize (int ,int ,int ,int ,int ,int ,size_t*) ;
 int cudnnGetConvolutionBackwardFilterWorkspaceSize (int ,int ,int ,int ,int ,int ,size_t*) ;
 int cudnnGetConvolutionForwardWorkspaceSize (int ,int ,int ,int ,int ,int ,size_t*) ;
 int cudnn_handle () ;
 scalar_t__ gpu_index ;

__attribute__((used)) static size_t get_workspace_size(layer l){
    return (size_t)l.out_h*l.out_w*l.size*l.size*l.c/l.groups*sizeof(float);
}
