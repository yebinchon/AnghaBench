
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_PACKETIZER_T ;
struct TYPE_3__ {scalar_t__ (* open ) (int *) ;struct TYPE_3__* next; } ;
typedef TYPE_1__ VC_PACKETIZER_REGISTRY_ENTRY_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;


 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 TYPE_1__* registry ;
 scalar_t__ stub1 (int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T vc_packetizer_load(VC_PACKETIZER_T *p_ctx)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   VC_PACKETIZER_REGISTRY_ENTRY_T *entry;


   for (entry = registry; entry; entry = entry->next)
   {
      status = entry->open(p_ctx);
      if(status != VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED)
         break;
   }

   return status;
}
