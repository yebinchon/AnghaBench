
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* (* ReadPassword ) (TYPE_1__*,char*) ;int (* Write ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ CONSOLE ;


 int Free (char*) ;
 scalar_t__ StrCmp (char*,char*) ;
 char* _UU (char*) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;
 char* stub3 (TYPE_1__*,char*) ;
 char* stub4 (TYPE_1__*,char*) ;
 int stub5 (TYPE_1__*,char*) ;
 int stub6 (TYPE_1__*,char*) ;

char *CmdPasswordPrompt(CONSOLE *c)
{
 char *pw1, *pw2;

 if (c == ((void*)0))
 {
  return ((void*)0);
 }

 c->Write(c, _UU("CMD_VPNCMD_PWPROMPT_0"));

RETRY:
 c->Write(c, L"");


 pw1 = c->ReadPassword(c, _UU("CMD_VPNCMD_PWPROMPT_1"));
 if (pw1 == ((void*)0))
 {
  return ((void*)0);
 }

 pw2 = c->ReadPassword(c, _UU("CMD_VPNCMD_PWPROMPT_2"));
 if (pw2 == ((void*)0))
 {
  Free(pw1);
  return ((void*)0);
 }

 c->Write(c, L"");

 if (StrCmp(pw1, pw2) != 0)
 {
  Free(pw1);
  Free(pw2);
  c->Write(c, _UU("CMD_VPNCMD_PWPROMPT_3"));
  goto RETRY;
 }

 Free(pw1);

 return pw2;
}
