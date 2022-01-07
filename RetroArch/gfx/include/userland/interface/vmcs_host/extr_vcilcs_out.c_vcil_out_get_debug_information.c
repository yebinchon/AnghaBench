
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int exe ;
struct TYPE_6__ {int ilcs; } ;
struct TYPE_5__ {int len; } ;
typedef int OMX_STRING ;
typedef int OMX_S32 ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ IL_GET_DEBUG_INFORMATION_EXECUTE_T ;
typedef TYPE_2__ ILCS_COMMON_T ;


 int IL_GET_DEBUG_INFORMATION ;
 int OMX_ErrorHardware ;
 int OMX_ErrorNone ;
 scalar_t__ ilcs_execute_function (int ,int ,TYPE_1__*,int,int ,int*) ;

OMX_ERRORTYPE vcil_out_get_debug_information(ILCS_COMMON_T *st, OMX_STRING debugInfo, OMX_S32 *pLen)
{
   IL_GET_DEBUG_INFORMATION_EXECUTE_T exe;

   exe.len = *pLen;

   if(ilcs_execute_function(st->ilcs, IL_GET_DEBUG_INFORMATION, &exe, sizeof(exe), debugInfo, (int *) pLen) < 0)
      return OMX_ErrorHardware;

   return OMX_ErrorNone;
}
