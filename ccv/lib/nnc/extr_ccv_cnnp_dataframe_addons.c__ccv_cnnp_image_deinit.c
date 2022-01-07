
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccv_matrix_free (void* const) ;

__attribute__((used)) static void _ccv_cnnp_image_deinit(void* const data, void* const context)
{
 ccv_matrix_free(data);
}
