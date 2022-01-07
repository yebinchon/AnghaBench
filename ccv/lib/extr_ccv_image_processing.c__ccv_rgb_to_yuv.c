
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* u8; } ;
struct TYPE_6__ {int type; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 int ccv_matrix_getter (int ,int ,int ,int ) ;
 int ccv_matrix_setter_getter ;
 int for_block ;

__attribute__((used)) static void _ccv_rgb_to_yuv(ccv_dense_matrix_t* a, ccv_dense_matrix_t* b)
{
 unsigned char* a_ptr = a->data.u8;
 unsigned char* b_ptr = b->data.u8;
 int i, j;
 ccv_matrix_getter(a->type, ccv_matrix_setter_getter, b->type, for_block);

}
