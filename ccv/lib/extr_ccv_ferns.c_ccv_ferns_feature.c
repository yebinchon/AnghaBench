
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ccv_point_t ;
struct TYPE_7__ {int structs; int features; int * fern; } ;
typedef TYPE_2__ ccv_ferns_t ;
struct TYPE_6__ {unsigned char* u8; } ;
struct TYPE_8__ {int type; TYPE_1__ data; } ;
typedef TYPE_3__ ccv_dense_matrix_t ;


 scalar_t__ CCV_C1 ;
 scalar_t__ CCV_GET_CHANNEL (int ) ;
 int assert (int) ;
 int ccv_matrix_getter (int ,int ) ;
 int for_block ;

void ccv_ferns_feature(ccv_ferns_t* ferns, ccv_dense_matrix_t* a, int scale, uint32_t* fern)
{
 ccv_point_t* fern_feature = ferns->fern + scale * ferns->structs * ferns->features * 2;
 int i, j;
 unsigned char* a_ptr = a->data.u8;
 assert(CCV_GET_CHANNEL(a->type) == CCV_C1);
 ccv_matrix_getter(a->type, for_block);

}
