
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int (* FillBufferDone ) (TYPE_3__*,int ,int *) ;} ;
struct TYPE_10__ {int callback_state; TYPE_1__ callbacks; } ;
typedef TYPE_2__ VC_PRIVATE_COMPONENT_T ;
struct TYPE_12__ {int ilcs; } ;
struct TYPE_11__ {scalar_t__ pComponentPrivate; } ;
typedef TYPE_3__ OMX_COMPONENTTYPE ;
typedef int OMX_BUFFERHEADERTYPE ;
typedef TYPE_4__ ILCS_COMMON_T ;


 int * ilcs_receive_buffer (int ,void*,int,TYPE_3__**) ;
 int stub1 (TYPE_3__*,int ,int *) ;
 int vc_assert (int (*) (TYPE_3__*,int ,int *)) ;

void vcil_out_fill_buffer_done(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   OMX_COMPONENTTYPE *pComp;
   VC_PRIVATE_COMPONENT_T *comp;
   OMX_BUFFERHEADERTYPE *pHeader;

   pHeader = ilcs_receive_buffer(st->ilcs, call, clen, &pComp);
   *rlen = 0;

   if(pHeader)
   {
      comp = (VC_PRIVATE_COMPONENT_T *) pComp->pComponentPrivate;

      vc_assert(comp->callbacks.FillBufferDone);
      comp->callbacks.FillBufferDone(pComp, comp->callback_state, pHeader);
   }
}
