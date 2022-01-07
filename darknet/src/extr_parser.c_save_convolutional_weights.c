
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nweights; int n; int weights; int rolling_variance; int rolling_mean; int scales; scalar_t__ batch_normalize; int biases; scalar_t__ binary; } ;
typedef TYPE_1__ layer ;
typedef int FILE ;


 int fwrite (int ,int,int,int *) ;
 scalar_t__ gpu_index ;
 int pull_convolutional_layer (TYPE_1__) ;

void save_convolutional_weights(layer l, FILE *fp)
{
    if(l.binary){


    }





    int num = l.nweights;
    fwrite(l.biases, sizeof(float), l.n, fp);
    if (l.batch_normalize){
        fwrite(l.scales, sizeof(float), l.n, fp);
        fwrite(l.rolling_mean, sizeof(float), l.n, fp);
        fwrite(l.rolling_variance, sizeof(float), l.n, fp);
    }
    fwrite(l.weights, sizeof(float), num, fp);
}
