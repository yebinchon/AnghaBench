
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_13__ {int (* EmptyBufferDone ) (TYPE_3__*,int ,TYPE_4__*) ;} ;
struct TYPE_14__ {int callback_state; TYPE_1__ callbacks; } ;
typedef TYPE_2__ VC_PRIVATE_COMPONENT_T ;
struct TYPE_12__ {TYPE_4__* pOutputPortPrivate; } ;
struct TYPE_17__ {TYPE_11__ bufferHeader; TYPE_3__* reference; } ;
struct TYPE_16__ {int * pOutputPortPrivate; int * pInputPortPrivate; int * pPlatformPrivate; int * pAppPrivate; int * pBuffer; } ;
struct TYPE_15__ {scalar_t__ pComponentPrivate; } ;
typedef int OMX_U8 ;
typedef int OMX_PTR ;
typedef TYPE_3__ OMX_COMPONENTTYPE ;
typedef TYPE_4__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_5__ IL_PASS_BUFFER_EXECUTE_T ;
typedef int ILCS_COMMON_T ;


 int memcpy (TYPE_4__*,TYPE_11__*,int) ;
 int stub1 (TYPE_3__*,int ,TYPE_4__*) ;
 int vcos_assert (int (*) (TYPE_3__*,int ,TYPE_4__*)) ;

void vcil_out_empty_buffer_done(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_PASS_BUFFER_EXECUTE_T *exe = call;
   OMX_COMPONENTTYPE *pComp = exe->reference;
   VC_PRIVATE_COMPONENT_T *comp = (VC_PRIVATE_COMPONENT_T *) pComp->pComponentPrivate;
   OMX_BUFFERHEADERTYPE *pHeader = exe->bufferHeader.pOutputPortPrivate;
   OMX_U8 *pBuffer = pHeader->pBuffer;
   OMX_PTR *pAppPrivate = pHeader->pAppPrivate;
   OMX_PTR *pPlatformPrivate = pHeader->pPlatformPrivate;
   OMX_PTR *pInputPortPrivate = pHeader->pInputPortPrivate;
   OMX_PTR *pOutputPortPrivate = pHeader->pOutputPortPrivate;

   memcpy(pHeader, &exe->bufferHeader, sizeof(OMX_BUFFERHEADERTYPE));

   pHeader->pBuffer = pBuffer;
   pHeader->pAppPrivate = pAppPrivate;
   pHeader->pPlatformPrivate = pPlatformPrivate;
   pHeader->pInputPortPrivate = pInputPortPrivate;
   pHeader->pOutputPortPrivate = pOutputPortPrivate;

   *rlen = 0;

   vcos_assert(comp->callbacks.EmptyBufferDone);
   comp->callbacks.EmptyBufferDone(pComp, comp->callback_state, pHeader);
}
