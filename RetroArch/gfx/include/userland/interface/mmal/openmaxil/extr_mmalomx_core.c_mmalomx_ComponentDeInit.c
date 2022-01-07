
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef int MMALOMX_COMPONENT_T ;


 int LOG_TRACE (char*,scalar_t__) ;
 int MMAL_PARAM_UNUSED (int *) ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorNone ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentDeInit(
  OMX_HANDLETYPE hComponent)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   MMAL_PARAM_UNUSED(component);

   LOG_TRACE("hComponent %p", hComponent);


   if (!hComponent)
      return OMX_ErrorInvalidComponent;

   return OMX_ErrorNone;
}
