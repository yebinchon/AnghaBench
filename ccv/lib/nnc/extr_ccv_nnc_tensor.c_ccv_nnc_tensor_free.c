
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int u8; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_8__ {int type; TYPE_2__ data; TYPE_1__ info; } ;
typedef TYPE_3__ ccv_nnc_tensor_t ;


 int CCV_NO_DATA_ALLOC ;
 int CCV_PINNED_MEM ;
 int CCV_TENSOR_GET_DEVICE_ID (int ) ;
 scalar_t__ CCV_TENSOR_GET_MEMORY (int ) ;
 scalar_t__ CCV_TENSOR_GPU_MEMORY ;
 int ccfree (TYPE_3__* const) ;
 int cufree (int ,int ) ;
 int cuunregister (int ) ;

void ccv_nnc_tensor_free(ccv_nnc_tensor_t* const tensor)
{







 ccfree(tensor);
}
