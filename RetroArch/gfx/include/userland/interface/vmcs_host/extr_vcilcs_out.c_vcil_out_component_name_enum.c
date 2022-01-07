
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int resp ;
typedef int exe ;
struct TYPE_9__ {int ilcs; } ;
struct TYPE_8__ {int index; } ;
struct TYPE_7__ {int err; scalar_t__ name; } ;
typedef int OMX_U32 ;
typedef scalar_t__* OMX_STRING ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_1__ IL_COMPONENT_NAME_ENUM_RESPONSE_T ;
typedef TYPE_2__ IL_COMPONENT_NAME_ENUM_EXECUTE_T ;
typedef TYPE_3__ ILCS_COMMON_T ;


 int IL_COMPONENT_NAME_ENUM ;
 int OMX_ErrorHardware ;
 scalar_t__ ilcs_execute_function (int ,int ,TYPE_2__*,int,TYPE_1__*,int*) ;
 int strncpy (char*,char*,int) ;

OMX_ERRORTYPE vcil_out_component_name_enum(ILCS_COMMON_T *st, OMX_STRING cComponentName, OMX_U32 nNameLength, OMX_U32 nIndex)
{
   IL_COMPONENT_NAME_ENUM_EXECUTE_T exe;
   IL_COMPONENT_NAME_ENUM_RESPONSE_T resp;
   int rlen = sizeof(resp);

   exe.index = nIndex;

   if(ilcs_execute_function(st->ilcs, IL_COMPONENT_NAME_ENUM, &exe, sizeof(exe), &resp, &rlen) < 0 || rlen != sizeof(resp))
      return OMX_ErrorHardware;

   if (sizeof(resp.name) < nNameLength)
      nNameLength = sizeof(resp.name);

   strncpy((char *)cComponentName, (char *) resp.name, nNameLength);
   cComponentName[127] = 0;
   return resp.err;
}
