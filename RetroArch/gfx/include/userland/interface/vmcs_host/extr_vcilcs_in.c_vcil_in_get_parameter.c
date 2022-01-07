
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int param; int index; TYPE_1__* reference; } ;
struct TYPE_6__ {int param; int err; int func; } ;
struct TYPE_5__ {int (* GetParameter ) (TYPE_1__*,int ,int ) ;} ;
typedef int OMX_U32 ;
typedef TYPE_1__ OMX_COMPONENTTYPE ;
typedef TYPE_2__ IL_GET_RESPONSE_T ;
typedef TYPE_3__ IL_GET_EXECUTE_T ;
typedef int ILCS_COMMON_T ;


 int IL_GET_PARAMETER ;
 int IL_GET_RESPONSE_HEADER_SIZE ;
 int OMX_ErrorHardware ;
 int VC_ILCS_MAX_PARAM_SIZE ;
 int memcpy (int ,int ,int) ;
 int stub1 (TYPE_1__*,int ,int ) ;

void vcil_in_get_parameter(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_GET_EXECUTE_T *exe = call;
   IL_GET_RESPONSE_T *ret = resp;
   OMX_COMPONENTTYPE *pComp = exe->reference;
   OMX_U32 size = *((OMX_U32 *) (&exe->param));

   ret->func = IL_GET_PARAMETER;

   if(size > VC_ILCS_MAX_PARAM_SIZE)
   {
      *rlen = IL_GET_RESPONSE_HEADER_SIZE;
      ret->err = OMX_ErrorHardware;
   }
   else
   {
      *rlen = size + IL_GET_RESPONSE_HEADER_SIZE;
      ret->err = pComp->GetParameter(pComp, exe->index, exe->param);
      memcpy(ret->param, exe->param, size);
   }
}
