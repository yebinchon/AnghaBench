
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float* f32; } ;
struct TYPE_5__ {int rows; int cols; TYPE_1__ data; int type; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 scalar_t__ CCV_32F ;
 scalar_t__ CCV_C3 ;
 scalar_t__ CCV_GET_CHANNEL (int ) ;
 scalar_t__ CCV_GET_DATA_TYPE (int ) ;
 int assert (int) ;
 float ccv_clamp (float,int ,int) ;

__attribute__((used)) static void _ccv_cnnp_image_lighting(ccv_dense_matrix_t* image, const float alpha_r, const float alpha_g, const float alpha_b)
{
 assert(CCV_GET_DATA_TYPE(image->type) == CCV_32F);
 assert(CCV_GET_CHANNEL(image->type) == CCV_C3);


 const float pca_r = alpha_r * (55.46 * -0.5675) + alpha_g * (4.794 * 0.7192) + alpha_b * (1.148 * 0.4009);
 const float pca_g = alpha_r * (55.46 * -0.5808) + alpha_g * (4.794 * -0.0045) + alpha_b * (1.148 * -0.8140);
 const float pca_b = alpha_r * (55.46 * -0.5836) + alpha_g * (4.794 * -0.6948) + alpha_b * (1.148 * 0.4203);
 int i;
 const int size = image->rows * image->cols;
 float* const ptr = image->data.f32;
 for (i = 0; i < size; i++)
 {
  ptr[i * 3] = ccv_clamp(ptr[i * 3] + pca_r, 0, 255);
  ptr[i * 3 + 1] = ccv_clamp(ptr[i * 3 + 1] + pca_g, 0, 255);
  ptr[i * 3 + 2] = ccv_clamp(ptr[i * 3 + 2] + pca_b, 0, 255);
 }
}
