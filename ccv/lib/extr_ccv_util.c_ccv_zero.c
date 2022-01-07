
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_matrix_t ;
struct TYPE_4__ {int u8; } ;
struct TYPE_5__ {int step; int rows; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 TYPE_2__* ccv_get_dense_matrix (int *) ;
 int memset (int ,int ,int) ;

void ccv_zero(ccv_matrix_t* mat)
{
 ccv_dense_matrix_t* dmt = ccv_get_dense_matrix(mat);
 memset(dmt->data.u8, 0, dmt->step * dmt->rows);
}
