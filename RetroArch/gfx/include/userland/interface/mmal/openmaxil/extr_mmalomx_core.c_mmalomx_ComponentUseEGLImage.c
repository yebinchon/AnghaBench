
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef scalar_t__ OMX_U32 ;
typedef int OMX_PTR ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef int OMX_BUFFERHEADERTYPE ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int LOG_TRACE (char*,scalar_t__,int **,int,int ,void*) ;
 int MMAL_PARAM_UNUSED (TYPE_1__*) ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorInvalidState ;
 int OMX_ErrorNotImplemented ;
 scalar_t__ OMX_StateInvalid ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentUseEGLImage(
   OMX_HANDLETYPE hComponent,
   OMX_BUFFERHEADERTYPE** ppBufferHdr,
   OMX_U32 nPortIndex,
   OMX_PTR pAppPrivate,
   void* eglImage)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   MMAL_PARAM_UNUSED(component);

   LOG_TRACE("hComponent %p, ppBufferHdr %p, nPortIndex %i, pAppPrivate %p,"
             " eglImage %p", hComponent, ppBufferHdr, (int)nPortIndex,
             pAppPrivate, eglImage);


   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;

   return OMX_ErrorNotImplemented;
}
