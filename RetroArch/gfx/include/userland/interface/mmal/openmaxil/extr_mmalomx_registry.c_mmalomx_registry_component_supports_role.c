
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* roles; } ;
typedef int MMAL_BOOL_T ;
typedef scalar_t__ MMALOMX_ROLE_T ;


 scalar_t__ MMALOMX_ROLE_UNDEFINED ;
 int MMAL_COUNTOF (TYPE_1__*) ;
 int MMAL_FALSE ;
 int MMAL_TRUE ;
 TYPE_1__* mmalomx_components ;

MMAL_BOOL_T mmalomx_registry_component_supports_role(int id, MMALOMX_ROLE_T role)
{
   unsigned int i;

   if (id >= (int)MMAL_COUNTOF(mmalomx_components) || id < 0)
      id = MMAL_COUNTOF(mmalomx_components) - 1;

   for (i = 0; mmalomx_components[id].roles[i] != MMALOMX_ROLE_UNDEFINED; i++)
      if (mmalomx_components[id].roles[i] == role)
         return MMAL_TRUE;

   return MMAL_FALSE;
}
