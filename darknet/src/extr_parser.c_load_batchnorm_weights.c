
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; int rolling_variance; int rolling_mean; int scales; } ;
typedef TYPE_1__ layer ;
typedef int FILE ;


 int fread (int ,int,int ,int *) ;
 scalar_t__ gpu_index ;
 int push_batchnorm_layer (TYPE_1__) ;

void load_batchnorm_weights(layer l, FILE *fp)
{
    fread(l.scales, sizeof(float), l.c, fp);
    fread(l.rolling_mean, sizeof(float), l.c, fp);
    fread(l.rolling_variance, sizeof(float), l.c, fp);





}
