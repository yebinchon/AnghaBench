
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
struct TYPE_5__ {TYPE_1__ desc; int face; } ;
typedef TYPE_2__ scd_context_t ;


 int ccv_scd_classifier_cascade_free (int ) ;
 int free (TYPE_2__*) ;

void uri_scd_detect_objects_destroy(void* context)
{
 scd_context_t* scd_context = (scd_context_t*)context;
 ccv_scd_classifier_cascade_free(scd_context->face);
 free(scd_context->desc.data);
 free(scd_context);
}
