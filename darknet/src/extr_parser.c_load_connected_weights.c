
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int outputs; int inputs; int rolling_variance; int rolling_mean; int scales; int dontloadscales; scalar_t__ batch_normalize; int weights; int biases; } ;
typedef TYPE_1__ layer ;
typedef int FILE ;


 int fread (int ,int,int,int *) ;
 scalar_t__ gpu_index ;
 int push_connected_layer (TYPE_1__) ;
 int transpose_matrix (int ,int,int) ;

void load_connected_weights(layer l, FILE *fp, int transpose)
{
    fread(l.biases, sizeof(float), l.outputs, fp);
    fread(l.weights, sizeof(float), l.outputs*l.inputs, fp);
    if(transpose){
        transpose_matrix(l.weights, l.inputs, l.outputs);
    }


    if (l.batch_normalize && (!l.dontloadscales)){
        fread(l.scales, sizeof(float), l.outputs, fp);
        fread(l.rolling_mean, sizeof(float), l.outputs, fp);
        fread(l.rolling_variance, sizeof(float), l.outputs, fp);



    }





}
