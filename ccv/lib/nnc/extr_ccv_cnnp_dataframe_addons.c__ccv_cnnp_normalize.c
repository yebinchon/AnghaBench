
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float* f32; } ;
struct TYPE_5__ {int rows; int cols; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;



__attribute__((used)) static void _ccv_cnnp_normalize(ccv_dense_matrix_t* const image, const float mean[3], const float inv_std[3])
{
 int i;
 const int count = image->rows * image->cols;
 float* ap = image->data.f32;
 for (i = 0; i < count; i++)
 {
  ap[i * 3] = (ap[i * 3] - mean[0]) * inv_std[0];
  ap[i * 3 + 1] = (ap[i * 3 + 1] - mean[1]) * inv_std[1];
  ap[i * 3 + 2] = (ap[i * 3 + 2] - mean[2]) * inv_std[2];
 }
}
