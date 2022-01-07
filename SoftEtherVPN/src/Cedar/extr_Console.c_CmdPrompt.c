
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

wchar_t *CmdPrompt(CONSOLE *c, void *param)
{
 wchar_t *p = (param == ((void*)0)) ? _UU("CMD_PROMPT") : (wchar_t *)param;

 return c->ReadLine(c, p, 1);
}
