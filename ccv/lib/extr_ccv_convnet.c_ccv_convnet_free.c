
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int count; scalar_t__ mean_activity; TYPE_1__* layers; } ;
typedef TYPE_2__ ccv_convnet_t ;
struct TYPE_6__ {TYPE_2__* w; } ;


 int ccfree (TYPE_2__*) ;
 int ccv_convnet_compact (TYPE_2__*) ;
 int ccv_matrix_free (scalar_t__) ;

void ccv_convnet_free(ccv_convnet_t* convnet)
{
 ccv_convnet_compact(convnet);
 int i;
 for (i = 0; i < convnet->count; i++)
  if (convnet->layers[i].w)
   ccfree(convnet->layers[i].w);
 if (convnet->mean_activity)
  ccv_matrix_free(convnet->mean_activity);
 ccfree(convnet);
}
