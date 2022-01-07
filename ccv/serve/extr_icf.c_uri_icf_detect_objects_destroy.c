
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
struct TYPE_5__ {TYPE_1__ desc; int pedestrian; } ;
typedef TYPE_2__ icf_context_t ;


 int ccv_icf_classifier_cascade_free (int ) ;
 int free (TYPE_2__*) ;

void uri_icf_detect_objects_destroy(void* context)
{
 icf_context_t* icf_context = (icf_context_t*)context;
 ccv_icf_classifier_cascade_free(icf_context->pedestrian);
 free(icf_context->desc.data);
 free(icf_context);
}
