
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;
typedef TYPE_2__ sift_context_t ;


 int free (TYPE_2__*) ;

void uri_sift_destroy(void* context)
{
 sift_context_t* sift_context = (sift_context_t*)context;
 free(sift_context->desc.data);
 free(sift_context);
}
