
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
struct TYPE_5__ {TYPE_1__ desc; int semaphore; int tlds; } ;
typedef TYPE_2__ tld_context_t ;


 int ccv_array_free (int ) ;
 int dispatch_release (int ) ;
 int free (TYPE_2__*) ;

void uri_tld_track_object_destroy(void* context)
{
 tld_context_t* tld_context = (tld_context_t*)context;
 ccv_array_free(tld_context->tlds);
 dispatch_release(tld_context->semaphore);
 free(tld_context->desc.data);
 free(tld_context);
}
