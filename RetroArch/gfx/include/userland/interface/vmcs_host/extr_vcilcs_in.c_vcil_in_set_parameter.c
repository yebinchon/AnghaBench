
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int err; int func; } ;
struct TYPE_6__ {int param; int index; TYPE_1__* reference; } ;
struct TYPE_5__ {int (* SetParameter ) (TYPE_1__*,int ,int ) ;} ;
typedef TYPE_1__ OMX_COMPONENTTYPE ;
typedef TYPE_2__ IL_SET_EXECUTE_T ;
typedef TYPE_3__ IL_RESPONSE_HEADER_T ;
typedef int ILCS_COMMON_T ;


 int IL_SET_PARAMETER ;
 int stub1 (TYPE_1__*,int ,int ) ;

void vcil_in_set_parameter(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_SET_EXECUTE_T *exe = call;
   IL_RESPONSE_HEADER_T *ret = resp;
   OMX_COMPONENTTYPE *pComp = exe->reference;

   *rlen = sizeof(IL_RESPONSE_HEADER_T);
   ret->func = IL_SET_PARAMETER;
   ret->err = pComp->SetParameter(pComp, exe->index, exe->param);
}
