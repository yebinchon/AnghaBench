
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int * pOutputPortPrivate; int * pInputPortPrivate; } ;
struct TYPE_14__ {int port; int size; int bufferReference; TYPE_3__* reference; } ;
struct TYPE_13__ {scalar_t__ err; TYPE_9__ bufferHeader; int * reference; int func; } ;
struct TYPE_12__ {scalar_t__ (* UseBuffer ) (TYPE_3__*,int **,int ,int ,int ,int *) ;scalar_t__ (* GetParameter ) (TYPE_3__*,int ,TYPE_2__*) ;} ;
struct TYPE_10__ {int nVersion; } ;
struct TYPE_11__ {int nSize; scalar_t__ eDir; int nPortIndex; TYPE_1__ nVersion; } ;
typedef int OMX_U8 ;
typedef TYPE_2__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_3__ OMX_COMPONENTTYPE ;
typedef int OMX_BUFFERHEADERTYPE ;
typedef TYPE_4__ IL_ADD_BUFFER_RESPONSE_T ;
typedef TYPE_5__ IL_ADD_BUFFER_EXECUTE_T ;
typedef int ILCS_COMMON_T ;


 int IL_USE_BUFFER ;
 scalar_t__ OMX_DirInput ;
 scalar_t__ OMX_ErrorInsufficientResources ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_IndexParamPortDefinition ;
 int OMX_VERSION ;
 int memcpy (TYPE_9__*,int *,int) ;
 scalar_t__ stub1 (TYPE_3__*,int **,int ,int ,int ,int *) ;
 scalar_t__ stub2 (TYPE_3__*,int ,TYPE_2__*) ;
 int vc_assert (int) ;
 int vcos_free (int *) ;
 int * vcos_malloc_aligned (int ,int,char*) ;

void vcil_in_use_buffer(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_ADD_BUFFER_EXECUTE_T *exe = call;
   IL_ADD_BUFFER_RESPONSE_T *ret = resp;
   OMX_COMPONENTTYPE *pComp = exe->reference;
   OMX_U8 *buffer;
   OMX_BUFFERHEADERTYPE *bufferHeader;

   *rlen = sizeof(IL_ADD_BUFFER_RESPONSE_T);

   buffer = vcos_malloc_aligned(exe->size, 32, "vcin mapping buffer");
   if (!buffer)
   {
      ret->err = OMX_ErrorInsufficientResources;
      return;
   }


   ret->func = IL_USE_BUFFER;
   ret->err = pComp->UseBuffer(pComp, &bufferHeader, exe->port, exe->bufferReference, exe->size, buffer);

   if (ret->err == OMX_ErrorNone)
   {


      OMX_PARAM_PORTDEFINITIONTYPE def;
      OMX_ERRORTYPE error;
      def.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
      def.nVersion.nVersion = OMX_VERSION;
      def.nPortIndex = exe->port;
      error = pComp->GetParameter(pComp, OMX_IndexParamPortDefinition, &def);
      vc_assert(error == OMX_ErrorNone);

      ret->reference = bufferHeader;
      memcpy(&ret->bufferHeader, bufferHeader, sizeof(OMX_BUFFERHEADERTYPE));

      if (def.eDir == OMX_DirInput)
         ret->bufferHeader.pInputPortPrivate = bufferHeader;
      else
         ret->bufferHeader.pOutputPortPrivate = bufferHeader;
   }
   else
      vcos_free(buffer);
}
