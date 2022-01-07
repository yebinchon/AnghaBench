
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
typedef int OMX_STRING ;
typedef int OMX_INDEXTYPE ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int LOG_TRACE (char*,scalar_t__,int ,int *) ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorInvalidState ;
 scalar_t__ OMX_StateInvalid ;
 int mmalomx_parameter_extension_index_get (int ,int *) ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentGetExtensionIndex(
   OMX_HANDLETYPE hComponent,
   OMX_STRING cParameterName,
   OMX_INDEXTYPE* pIndexType)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;

   LOG_TRACE("hComponent %p, cParameterName %s, pIndexType %p",
             hComponent, cParameterName, pIndexType);


   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;

   return mmalomx_parameter_extension_index_get(cParameterName, pIndexType);
}
