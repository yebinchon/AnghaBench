
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef int OMX_VERSIONTYPE ;
typedef int OMX_U32 ;
typedef scalar_t__ OMX_PTR ;
typedef int OMX_INDEXTYPE ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int LOG_TRACE (char*,scalar_t__,int ,int ,scalar_t__) ;
 int OMX_ErrorBadParameter ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorInvalidState ;
 scalar_t__ OMX_StateInvalid ;
 int mmalomx_param_to_string (int ) ;
 int mmalomx_parameter_set (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentSetConfig(
   OMX_HANDLETYPE hComponent,
   OMX_INDEXTYPE nParamIndex,
   OMX_PTR pParam)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;

   LOG_TRACE("hComponent %p, nParamIndex 0x%x (%s), pParam %p",
             hComponent, nParamIndex, mmalomx_param_to_string(nParamIndex), pParam);


   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (!pParam)
      return OMX_ErrorBadParameter;
   if (*(OMX_U32 *)pParam < sizeof(OMX_U32) + sizeof(OMX_VERSIONTYPE))
      return OMX_ErrorBadParameter;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;

   return mmalomx_parameter_set(component, nParamIndex, pParam);
}
