
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int comp; } ;
typedef int OMX_HANDLETYPE ;
typedef TYPE_1__ COMPONENT_T ;


 int vcos_assert (TYPE_1__*) ;

OMX_HANDLETYPE ilclient_get_handle(COMPONENT_T *comp)
{
   vcos_assert(comp);
   return comp->comp;
}
