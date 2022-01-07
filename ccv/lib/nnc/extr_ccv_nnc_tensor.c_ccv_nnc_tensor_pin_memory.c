
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int u8; } ;
struct TYPE_5__ {int type; int info; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_nnc_tensor_t ;


 int CCV_PINNED_MEM ;
 int ccv_nnc_tensor_data_size (int ) ;
 int curegister (int ,int ) ;

int ccv_nnc_tensor_pin_memory(ccv_nnc_tensor_t* const tensor)
{
 return 0;
}
