
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef int OMX_STATETYPE ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int LOG_TRACE (char*,scalar_t__,int *) ;
 int MMAL_PARAM_UNUSED (TYPE_1__*) ;
 int OMX_ErrorBadParameter ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorNone ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentGetState(
   OMX_HANDLETYPE hComponent,
   OMX_STATETYPE* pState)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   MMAL_PARAM_UNUSED(component);

   LOG_TRACE("hComponent %p, pState, %p", hComponent, pState);


   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (!pState)
      return OMX_ErrorBadParameter;

   *pState = component->state;
   return OMX_ErrorNone;
}
