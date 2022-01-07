
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OMX_U32 ;
typedef int OMX_COMMANDTYPE ;
typedef int COMPONENT_T ;


 int ilclient_wait_for_command_complete_dual (int *,int ,int ,int *) ;

int ilclient_wait_for_command_complete(COMPONENT_T *comp, OMX_COMMANDTYPE command, OMX_U32 nData2)
{
   return ilclient_wait_for_command_complete_dual(comp, command, nData2, ((void*)0));
}
