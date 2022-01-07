
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; TYPE_1__* layers; } ;
typedef TYPE_2__ ccv_convnet_t ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ CCV_CONVNET_FULL_CONNECT ;

__attribute__((used)) static int _ccv_convnet_find_full_connect(ccv_convnet_t* convnet)
{
 int i;
 for (i = 0; i < convnet->count; i++)
  if (convnet->layers[i].type == CCV_CONVNET_FULL_CONNECT)
   return i;
 return -1;
}
