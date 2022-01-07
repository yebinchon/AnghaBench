
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_6__ {int * (* ReadLine ) (TYPE_1__*,char*,int) ;int (* Write ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ CONSOLE ;


 char* _UU (char*) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;
 int * stub3 (TYPE_1__*,char*,int) ;

wchar_t *PsClusterSettingMemberPromptPorts(CONSOLE *c, void *param)
{
 wchar_t *ret;

 if (c == ((void*)0))
 {
  return ((void*)0);
 }

 c->Write(c, _UU("CMD_ClusterSettingMember_Prompt_PORT_1"));
 c->Write(c, L"");

 ret = c->ReadLine(c, _UU("CMD_ClusterSettingMember_Prompt_PORT_2"), 1);

 return ret;
}
