
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inputs; int batch; int rand; int rand_gpu; } ;
typedef TYPE_1__ dropout_layer ;


 int cuda_free (int ) ;
 int cuda_make_array (int ,int) ;
 int realloc (int ,int) ;

void resize_dropout_layer(dropout_layer *l, int inputs)
{
    l->rand = realloc(l->rand, l->inputs*l->batch*sizeof(float));





}
