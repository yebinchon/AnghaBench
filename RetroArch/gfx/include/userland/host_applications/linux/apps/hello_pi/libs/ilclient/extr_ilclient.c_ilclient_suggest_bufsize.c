
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int param ;
struct TYPE_4__ {int nVersion; } ;
struct TYPE_5__ {int nSize; int nBufferSize; TYPE_1__ nVersion; } ;
typedef int OMX_U32 ;
typedef TYPE_2__ OMX_PARAM_BRCMOUTPUTBUFFERSIZETYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef int COMPONENT_T ;


 int ILC_GET_HANDLE (int *) ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_IndexParamBrcmOutputBufferSize ;
 scalar_t__ OMX_SetParameter (int ,int ,TYPE_2__*) ;
 int OMX_VERSION ;
 int assert (int) ;

int ilclient_suggest_bufsize(COMPONENT_T *comp, OMX_U32 nBufSizeHint)
{
   OMX_PARAM_BRCMOUTPUTBUFFERSIZETYPE param;
   OMX_ERRORTYPE error;

   param.nSize = sizeof(param);
   param.nVersion.nVersion = OMX_VERSION;
   param.nBufferSize = nBufSizeHint;
   error = OMX_SetParameter(ILC_GET_HANDLE(comp), OMX_IndexParamBrcmOutputBufferSize,
                            &param);
   assert(error == OMX_ErrorNone);

   return (error == OMX_ErrorNone) ? 0 : -1;
}
