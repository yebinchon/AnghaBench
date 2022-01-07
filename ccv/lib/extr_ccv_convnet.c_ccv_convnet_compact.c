
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; TYPE_4__* layers; scalar_t__* denoms; scalar_t__* acts; } ;
typedef TYPE_1__ ccv_convnet_t ;
struct TYPE_6__ {scalar_t__ reserved; } ;


 scalar_t__ SIMD (TYPE_4__*) ;
 int ccfree (scalar_t__) ;
 int ccv_matrix_free (scalar_t__) ;
 int cwc_convnet_compact (TYPE_1__*) ;

void ccv_convnet_compact(ccv_convnet_t* convnet)
{



 int i;
 for (i = 0; i < convnet->count; i++)
 {
  if (convnet->acts[i])
   ccv_matrix_free(convnet->acts[i]);
  convnet->acts[i] = 0;
  if (convnet->denoms)
  {
   if (convnet->denoms[i])
    ccv_matrix_free(convnet->denoms[i]);
   convnet->denoms[i] = 0;
  }
  if (SIMD(convnet->layers + i))
  {
   ccfree(convnet->layers[i].reserved);
   convnet->layers[i].reserved = 0;
  }
 }
}
