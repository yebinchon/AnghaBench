
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_CONTAINER_ES_FORMAT_T ;
struct TYPE_3__ {scalar_t__ magic; struct TYPE_3__* extradata; } ;
typedef TYPE_1__ VC_CONTAINER_ES_FORMAT_PRIVATE_T ;


 scalar_t__ VC_CONTAINER_ES_FORMAT_MAGIC ;
 int free (TYPE_1__*) ;
 int vc_container_assert (int) ;

void vc_container_format_delete(VC_CONTAINER_ES_FORMAT_T *format)
{
   VC_CONTAINER_ES_FORMAT_PRIVATE_T *private = (VC_CONTAINER_ES_FORMAT_PRIVATE_T *)format;
   vc_container_assert(private->magic == VC_CONTAINER_ES_FORMAT_MAGIC);
   if(private->extradata) free(private->extradata);
   free(private);
}
