
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
struct TYPE_5__ {TYPE_1__ desc; int car; int pedestrian; } ;
typedef TYPE_2__ dpm_context_t ;


 int ccv_dpm_mixture_model_free (int ) ;
 int free (TYPE_2__*) ;

void uri_dpm_detect_objects_destroy(void* context)
{
 dpm_context_t* dpm_context = (dpm_context_t*)context;
 ccv_dpm_mixture_model_free(dpm_context->pedestrian);
 ccv_dpm_mixture_model_free(dpm_context->car);
 free(dpm_context->desc.data);
 free(dpm_context);
}
