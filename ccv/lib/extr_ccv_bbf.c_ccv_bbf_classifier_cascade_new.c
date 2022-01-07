
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_size_t ;
typedef int ccv_dense_matrix_t ;
typedef int ccv_bbf_new_param_t ;


 int fprintf (int ,char*) ;
 int stderr ;

void ccv_bbf_classifier_cascade_new(ccv_dense_matrix_t** posimg, int posnum, char** bgfiles, int bgnum, int negnum, ccv_size_t size, const char* dir, ccv_bbf_new_param_t params)
{
 fprintf(stderr, " ccv_bbf_classifier_cascade_new requires libgsl support, please compile ccv with libgsl.\n");
}
