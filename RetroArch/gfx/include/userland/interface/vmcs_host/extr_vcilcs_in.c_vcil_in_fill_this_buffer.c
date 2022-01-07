
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {TYPE_2__* pOutputPortPrivate; } ;
struct TYPE_15__ {TYPE_9__ bufferHeader; TYPE_1__* reference; } ;
struct TYPE_14__ {int err; int func; } ;
struct TYPE_13__ {int * pOutputPortPrivate; int * pInputPortPrivate; int * pPlatformPrivate; int * pAppPrivate; int * pBuffer; } ;
struct TYPE_12__ {int (* FillThisBuffer ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef int OMX_U8 ;
typedef int OMX_PTR ;
typedef TYPE_1__ OMX_COMPONENTTYPE ;
typedef TYPE_2__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_3__ IL_RESPONSE_HEADER_T ;
typedef TYPE_4__ IL_PASS_BUFFER_EXECUTE_T ;
typedef int ILCS_COMMON_T ;


 int IL_FILL_THIS_BUFFER ;
 TYPE_2__* is_valid_hostside_buffer (TYPE_2__*) ;
 int memcpy (TYPE_2__*,TYPE_9__*,int) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int vc_assert (TYPE_2__*) ;

void vcil_in_fill_this_buffer(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_PASS_BUFFER_EXECUTE_T *exe = call;
   IL_RESPONSE_HEADER_T *ret = resp;
   OMX_COMPONENTTYPE *pComp = exe->reference;
   OMX_BUFFERHEADERTYPE *pHeader = exe->bufferHeader.pOutputPortPrivate;
   OMX_U8 *pBuffer = pHeader->pBuffer;
   OMX_PTR *pAppPrivate = pHeader->pAppPrivate;
   OMX_PTR *pPlatformPrivate = pHeader->pPlatformPrivate;
   OMX_PTR *pInputPortPrivate = pHeader->pInputPortPrivate;
   OMX_PTR *pOutputPortPrivate = pHeader->pOutputPortPrivate;

   vc_assert(pHeader);
   memcpy(pHeader, &exe->bufferHeader, sizeof(OMX_BUFFERHEADERTYPE));

   pHeader->pBuffer = pBuffer;
   pHeader->pAppPrivate = pAppPrivate;
   pHeader->pPlatformPrivate = pPlatformPrivate;
   pHeader->pInputPortPrivate = pInputPortPrivate;
   pHeader->pOutputPortPrivate = pOutputPortPrivate;

   vc_assert(is_valid_hostside_buffer(pHeader));

   *rlen = sizeof(IL_RESPONSE_HEADER_T);
   ret->func = IL_FILL_THIS_BUFFER;
   ret->err = pComp->FillThisBuffer(pComp, pHeader);
}
