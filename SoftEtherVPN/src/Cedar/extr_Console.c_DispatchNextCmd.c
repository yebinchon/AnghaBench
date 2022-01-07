
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int CONSOLE ;
typedef int CMD ;


 int DispatchNextCmdEx (int *,int *,char*,int *,int ,void*) ;

bool DispatchNextCmd(CONSOLE *c, char *prompt, CMD cmd[], UINT num_cmd, void *param)
{
 return DispatchNextCmdEx(c, ((void*)0), prompt, cmd, num_cmd, param);
}
