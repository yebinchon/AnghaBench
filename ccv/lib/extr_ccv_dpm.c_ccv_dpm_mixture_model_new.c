
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_rect_t ;
typedef int ccv_dpm_new_param_t ;


 int fprintf (int ,char*) ;
 int stderr ;

void ccv_dpm_mixture_model_new(char** posfiles, ccv_rect_t* bboxes, int posnum, char** bgfiles, int bgnum, int negnum, const char* dir, ccv_dpm_new_param_t params)
{
 fprintf(stderr, " ccv_dpm_classifier_cascade_new requires libgsl and liblinear support, please compile ccv with them.\n");
}
