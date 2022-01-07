
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; int registry_id; } ;
typedef int OMX_U8 ;
typedef scalar_t__ OMX_U32 ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef int MMALOMX_ROLE_T ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int LOG_TRACE (char*,scalar_t__,int *,int) ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorInvalidState ;
 int OMX_ErrorNoMore ;
 int OMX_ErrorNone ;
 scalar_t__ OMX_StateInvalid ;
 int mmalomx_registry_component_roles (int ,scalar_t__) ;
 int mmalomx_role_to_name (int ) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentRoleEnum(
   OMX_HANDLETYPE hComponent,
   OMX_U8 *cRole,
   OMX_U32 nIndex)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   MMALOMX_ROLE_T role;

   LOG_TRACE("hComponent %p, cRole %p, nIndex %i",
             hComponent, cRole, (int)nIndex);


   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;

   role = mmalomx_registry_component_roles(component->registry_id, nIndex);
   if (!role)
      return OMX_ErrorNoMore;
   if (!mmalomx_role_to_name(role))
      return OMX_ErrorNoMore;

   strcpy((char *)cRole, mmalomx_role_to_name(role));
   return OMX_ErrorNone;
}
