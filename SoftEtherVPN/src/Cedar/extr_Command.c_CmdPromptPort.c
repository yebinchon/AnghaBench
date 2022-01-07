
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int * (* ReadLine ) (TYPE_1__*,int *,int) ;} ;
typedef TYPE_1__ CONSOLE ;


 int * _UU (char*) ;
 int * stub1 (TYPE_1__*,int *,int) ;

wchar_t *CmdPromptPort(CONSOLE *c, void *param)
{
 wchar_t *prompt_str;

 if (param != ((void*)0))
 {
  prompt_str = (wchar_t *)param;
 }
 else
 {
  prompt_str = _UU("CMD_PROMPT_PORT");
 }

 return c->ReadLine(c, prompt_str, 1);
}
