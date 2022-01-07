
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int name; } ;
typedef TYPE_1__ VC_PACKETIZER_REGISTRY_ENTRY_T ;


 int LOG_DEBUG (int ,char*,int ) ;
 TYPE_1__* registry ;

void vc_packetizer_register(VC_PACKETIZER_REGISTRY_ENTRY_T *entry)
{
   LOG_DEBUG(0, "registering packetizer %s", entry->name);
   entry->next = registry;
   registry = entry;
}
