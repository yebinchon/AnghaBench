
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* reference; } ;
struct TYPE_6__ {int uuid; int spec_version; int component_version; int name; int err; int func; } ;
struct TYPE_5__ {int (* GetComponentVersion ) (TYPE_1__*,int ,int *,int *,int *) ;} ;
typedef TYPE_1__ OMX_COMPONENTTYPE ;
typedef TYPE_2__ IL_GET_VERSION_RESPONSE_T ;
typedef TYPE_3__ IL_EXECUTE_HEADER_T ;
typedef int ILCS_COMMON_T ;


 int IL_GET_COMPONENT_VERSION ;
 int stub1 (TYPE_1__*,int ,int *,int *,int *) ;

void vcil_in_get_component_version(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_EXECUTE_HEADER_T *exe = call;
   IL_GET_VERSION_RESPONSE_T *ret = resp;
   OMX_COMPONENTTYPE *pComp = exe->reference;

   *rlen = sizeof(IL_GET_VERSION_RESPONSE_T);
   ret->func = IL_GET_COMPONENT_VERSION;
   ret->err = pComp->GetComponentVersion(pComp, ret->name, &ret->component_version, &ret->spec_version, &ret->uuid);
}
