
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* EventHandler ) (TYPE_3__*,int ,int ,int ,int ,int ) ;} ;
struct TYPE_8__ {int callback_state; TYPE_1__ callbacks; } ;
typedef TYPE_2__ VC_PRIVATE_COMPONENT_T ;
struct TYPE_10__ {int eventdata; int data2; int data1; int event; TYPE_3__* reference; } ;
struct TYPE_9__ {scalar_t__ pComponentPrivate; } ;
typedef TYPE_3__ OMX_COMPONENTTYPE ;
typedef TYPE_4__ IL_EVENT_HANDLER_EXECUTE_T ;
typedef int ILCS_COMMON_T ;


 int stub1 (TYPE_3__*,int ,int ,int ,int ,int ) ;
 int vcos_assert (int (*) (TYPE_3__*,int ,int ,int ,int ,int )) ;

void vcil_out_event_handler(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_EVENT_HANDLER_EXECUTE_T *exe = call;
   OMX_COMPONENTTYPE *pComp = exe->reference;
   VC_PRIVATE_COMPONENT_T *comp = (VC_PRIVATE_COMPONENT_T *) pComp->pComponentPrivate;

   *rlen = 0;

   vcos_assert(comp->callbacks.EventHandler);
   comp->callbacks.EventHandler(pComp, comp->callback_state, exe->event, exe->data1, exe->data2, exe->eventdata);
}
