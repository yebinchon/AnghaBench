
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t port; } ;
typedef TYPE_1__ VC_PRIVATE_PORT_T ;
struct TYPE_6__ {size_t numPorts; TYPE_1__* port; } ;
typedef TYPE_2__ VC_PRIVATE_COMPONENT_T ;
typedef size_t OMX_U32 ;



__attribute__((used)) static VC_PRIVATE_PORT_T *find_port(VC_PRIVATE_COMPONENT_T *comp, OMX_U32 nPortIndex)
{
   OMX_U32 i=0;
   while (i<comp->numPorts && comp->port[i].port != nPortIndex)
      i++;

   if (i < comp->numPorts)
      return &comp->port[i];

   return ((void*)0);
}
