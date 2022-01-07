
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; int rolling_variance; int rolling_mean; int scales; } ;
typedef TYPE_1__ layer ;
typedef int FILE ;


 int fwrite (int ,int,int ,int *) ;
 scalar_t__ gpu_index ;
 int pull_batchnorm_layer (TYPE_1__) ;

void save_batchnorm_weights(layer l, FILE *fp)
{





    fwrite(l.scales, sizeof(float), l.c, fp);
    fwrite(l.rolling_mean, sizeof(float), l.c, fp);
    fwrite(l.rolling_variance, sizeof(float), l.c, fp);
}
