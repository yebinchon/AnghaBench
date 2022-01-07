
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_dpm_mixture_model_t ;


 int ccfree (int *) ;

void ccv_dpm_mixture_model_free(ccv_dpm_mixture_model_t* model)
{
 ccfree(model);
}
