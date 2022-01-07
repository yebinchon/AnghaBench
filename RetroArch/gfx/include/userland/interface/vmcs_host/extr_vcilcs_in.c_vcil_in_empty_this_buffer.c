
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ilcs; } ;
struct TYPE_8__ {int err; int func; } ;
struct TYPE_7__ {int (* EmptyThisBuffer ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ OMX_COMPONENTTYPE ;
typedef int OMX_BUFFERHEADERTYPE ;
typedef TYPE_2__ IL_RESPONSE_HEADER_T ;
typedef TYPE_3__ ILCS_COMMON_T ;


 int IL_EMPTY_THIS_BUFFER ;
 int OMX_ErrorHardware ;
 int * ilcs_receive_buffer (int ,void*,int,TYPE_1__**) ;
 int is_valid_hostside_buffer (int *) ;
 int stub1 (TYPE_1__*,int *) ;
 int vc_assert (int ) ;

void vcil_in_empty_this_buffer(ILCS_COMMON_T *st, void *call, int clen, void *resp, int *rlen)
{
   IL_RESPONSE_HEADER_T *ret = resp;
   OMX_COMPONENTTYPE *pComp;
   OMX_BUFFERHEADERTYPE *pHeader;

   pHeader = ilcs_receive_buffer(st->ilcs, call, clen, &pComp);

   *rlen = sizeof(IL_RESPONSE_HEADER_T);
   ret->func = IL_EMPTY_THIS_BUFFER;

   if(pHeader)
   {
      vc_assert(is_valid_hostside_buffer(pHeader));
      ret->err = pComp->EmptyThisBuffer(pComp, pHeader);
   }
   else
      ret->err = OMX_ErrorHardware;
}
