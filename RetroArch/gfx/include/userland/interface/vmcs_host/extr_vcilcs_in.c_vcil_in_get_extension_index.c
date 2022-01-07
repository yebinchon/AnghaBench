
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int name; TYPE_1__* reference; } ;
struct TYPE_6__ {int index; int err; int func; } ;
struct TYPE_5__ {int (* GetExtensionIndex ) (TYPE_1__*,int ,int *) ;} ;
typedef TYPE_1__ OMX_COMPONENTTYPE ;
typedef TYPE_2__ IL_GET_EXTENSION_RESPONSE_T ;
typedef TYPE_3__ IL_GET_EXTENSION_EXECUTE_T ;
typedef int ILCS_COMMON_T ;


 int IL_GET_EXTENSION_INDEX ;
 int stub1 (TYPE_1__*,int ,int *) ;

void vcil_in_get_extension_index(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_GET_EXTENSION_EXECUTE_T *exe = call;
   IL_GET_EXTENSION_RESPONSE_T *ret = resp;
   OMX_COMPONENTTYPE *pComp = exe->reference;

   *rlen = sizeof(IL_GET_EXTENSION_RESPONSE_T);
   ret->func = IL_GET_EXTENSION_INDEX;
   ret->err = pComp->GetExtensionIndex(pComp, exe->name, &ret->index);
}
