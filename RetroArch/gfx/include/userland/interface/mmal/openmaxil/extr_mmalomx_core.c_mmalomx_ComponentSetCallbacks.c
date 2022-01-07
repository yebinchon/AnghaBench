
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; int callbacks_data; int callbacks; } ;
typedef int OMX_PTR ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef int OMX_CALLBACKTYPE ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int LOG_TRACE (char*,scalar_t__,int *,int ) ;
 int MMAL_PARAM_UNUSED (TYPE_1__*) ;
 int OMX_ErrorBadParameter ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorInvalidState ;
 int OMX_ErrorNone ;
 scalar_t__ OMX_StateInvalid ;
 scalar_t__ OMX_StateLoaded ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentSetCallbacks(
   OMX_HANDLETYPE hComponent,
   OMX_CALLBACKTYPE* pCallbacks,
   OMX_PTR pAppData)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   MMAL_PARAM_UNUSED(component);

   LOG_TRACE("hComponent %p, pCallbacks %p, pAppData %p",
              hComponent, pCallbacks, pAppData);


   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (!pCallbacks)
      return OMX_ErrorBadParameter;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;

   if (component->state != OMX_StateLoaded)
      return OMX_ErrorInvalidState;

   component->callbacks = *pCallbacks;
   component->callbacks_data = pAppData;
   return OMX_ErrorNone;
}
