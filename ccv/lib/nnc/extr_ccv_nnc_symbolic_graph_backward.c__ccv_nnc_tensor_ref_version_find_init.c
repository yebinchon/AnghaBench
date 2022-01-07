
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ x; } ;
typedef TYPE_1__ ccv_nnc_tensor_ref_t ;
struct TYPE_6__ {TYPE_3__* ref_version; } ;
typedef TYPE_2__ ccv_nnc_autograd_tensor_version_t ;
struct TYPE_7__ {int rnum; } ;


 scalar_t__ ccv_array_get (TYPE_3__*,int) ;

__attribute__((used)) static int _ccv_nnc_tensor_ref_version_find_init(const ccv_nnc_autograd_tensor_version_t* const tensor_ver)
{
 int i;
 for (i = 0; i < tensor_ver->ref_version->rnum; i++)
  if (((ccv_nnc_tensor_ref_t*)ccv_array_get(tensor_ver->ref_version, i))->x < 0)
   return i;
 return -1;
}
