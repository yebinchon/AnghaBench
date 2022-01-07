
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numload; int n; int c; int groups; int size; double* biases; double* scales; double* rolling_mean; double* rolling_variance; double* weights; scalar_t__ flipped; int dontloadscales; scalar_t__ batch_normalize; scalar_t__ binary; } ;
typedef TYPE_1__ layer ;
typedef int FILE ;


 int fill_cpu (int,int ,double*,int) ;
 int fread (double*,int,int,int *) ;
 scalar_t__ gpu_index ;
 int printf (char*,...) ;
 int push_convolutional_layer (TYPE_1__) ;
 int transpose_matrix (double*,int,int) ;

void load_convolutional_weights(layer l, FILE *fp)
{
    if(l.binary){


    }
    if(l.numload) l.n = l.numload;
    int num = l.c/l.groups*l.n*l.size*l.size;
    fread(l.biases, sizeof(float), l.n, fp);
    if (l.batch_normalize && (!l.dontloadscales)){
        fread(l.scales, sizeof(float), l.n, fp);
        fread(l.rolling_mean, sizeof(float), l.n, fp);
        fread(l.rolling_variance, sizeof(float), l.n, fp);
        if(0){
            int i;
            for(i = 0; i < l.n; ++i){
                printf("%g, ", l.rolling_mean[i]);
            }
            printf("\n");
            for(i = 0; i < l.n; ++i){
                printf("%g, ", l.rolling_variance[i]);
            }
            printf("\n");
        }
        if(0){
            fill_cpu(l.n, 0, l.rolling_mean, 1);
            fill_cpu(l.n, 0, l.rolling_variance, 1);
        }
        if(0){
            int i;
            for(i = 0; i < l.n; ++i){
                printf("%g, ", l.rolling_mean[i]);
            }
            printf("\n");
            for(i = 0; i < l.n; ++i){
                printf("%g, ", l.rolling_variance[i]);
            }
            printf("\n");
        }
    }
    fread(l.weights, sizeof(float), num, fp);

    if (l.flipped) {
        transpose_matrix(l.weights, l.c*l.size*l.size, l.n);
    }






}
