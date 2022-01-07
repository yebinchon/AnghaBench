
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nOutputPortIndex; } ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef int MMALOMX_COMPONENT_T ;


 scalar_t__ ENABLE_MMAL_EXTRA_LOGGING ;
 int LOG_TRACE (char*,scalar_t__,int,TYPE_1__*) ;
 int OMX_DirOutput ;
 int mmalomx_buffer_send (int *,TYPE_1__*,int ) ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentFillThisBuffer(
   OMX_HANDLETYPE hComponent,
   OMX_BUFFERHEADERTYPE* pBuffer)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;

   if (ENABLE_MMAL_EXTRA_LOGGING)
      LOG_TRACE("hComponent %p, port %i, pBuffer %p", hComponent,
                pBuffer ? (int)pBuffer->nOutputPortIndex : -1, pBuffer);

  return mmalomx_buffer_send(component, pBuffer, OMX_DirOutput);
}
