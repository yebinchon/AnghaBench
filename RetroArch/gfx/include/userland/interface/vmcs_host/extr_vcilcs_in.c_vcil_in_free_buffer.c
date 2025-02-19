
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int port; TYPE_4__* outputPrivate; TYPE_4__* inputPrivate; TYPE_3__* reference; } ;
struct TYPE_15__ {scalar_t__ err; int func; } ;
struct TYPE_14__ {int * pBuffer; } ;
struct TYPE_13__ {scalar_t__ (* GetParameter ) (TYPE_3__*,int ,TYPE_2__*) ;scalar_t__ (* FreeBuffer ) (TYPE_3__*,int ,TYPE_4__*) ;} ;
struct TYPE_11__ {int nVersion; } ;
struct TYPE_12__ {int nSize; scalar_t__ eDir; int nPortIndex; TYPE_1__ nVersion; } ;
typedef int OMX_U8 ;
typedef TYPE_2__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_3__ OMX_COMPONENTTYPE ;
typedef TYPE_4__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_5__ IL_RESPONSE_HEADER_T ;
typedef TYPE_6__ IL_FREE_BUFFER_EXECUTE_T ;
typedef int ILCS_COMMON_T ;


 int IL_FREE_BUFFER ;
 scalar_t__ OMX_DirInput ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_IndexParamPortDefinition ;
 int OMX_VERSION ;
 scalar_t__ stub1 (TYPE_3__*,int ,TYPE_2__*) ;
 scalar_t__ stub2 (TYPE_3__*,int ,TYPE_4__*) ;
 int vc_assert (int) ;
 int vcos_free (int *) ;

void vcil_in_free_buffer(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_FREE_BUFFER_EXECUTE_T *exe = call;
   IL_RESPONSE_HEADER_T *ret = resp;
   OMX_COMPONENTTYPE *pComp = exe->reference;
   OMX_BUFFERHEADERTYPE *pHeader;
   OMX_U8 *buffer;
   OMX_PARAM_PORTDEFINITIONTYPE def;
   OMX_ERRORTYPE error;

   def.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
   def.nVersion.nVersion = OMX_VERSION;
   def.nPortIndex = exe->port;
   error = pComp->GetParameter(pComp, OMX_IndexParamPortDefinition, &def);
   vc_assert(error == OMX_ErrorNone);
   if (def.eDir == OMX_DirInput)
      pHeader = exe->inputPrivate;
   else
      pHeader = exe->outputPrivate;

   buffer = pHeader->pBuffer;

   *rlen = sizeof(IL_RESPONSE_HEADER_T);
   ret->func = IL_FREE_BUFFER;
   ret->err = pComp->FreeBuffer(pComp, exe->port, pHeader);
   if (ret->err == OMX_ErrorNone)
      vcos_free(buffer);
}
