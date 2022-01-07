
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
struct TYPE_23__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef int UINT ;
struct TYPE_25__ {int (* Write ) (TYPE_3__*,char*) ;} ;
struct TYPE_24__ {int NumTokens; } ;
typedef TYPE_2__ TOKEN_LIST ;
typedef TYPE_3__ CONSOLE ;


 int Free (char*) ;
 int GetCommandHelpStr (char*,char**,char**,char**) ;
 int GetConsoleWidth (TYPE_3__*) ;
 int MAX_SIZE ;
 char* MakeCharArray (char,int) ;
 char* Malloc (int) ;
 int PrintCandidateHelp (TYPE_3__*,char*,TYPE_2__*,int) ;
 TYPE_1__* SeparateStringByWidth (char*,int) ;
 int UniFormat (char*,int,char*,char*,...) ;
 int UniFreeToken (TYPE_1__*) ;
 char* _UU (char*) ;
 int stub1 (TYPE_3__*,char*) ;
 int stub10 (TYPE_3__*,char*) ;
 int stub11 (TYPE_3__*,char*) ;
 int stub12 (TYPE_3__*,char*) ;
 int stub2 (TYPE_3__*,char*) ;
 int stub3 (TYPE_3__*,char*) ;
 int stub4 (TYPE_3__*,char*) ;
 int stub5 (TYPE_3__*,char*) ;
 int stub6 (TYPE_3__*,char*) ;
 int stub7 (TYPE_3__*,char*) ;
 int stub8 (TYPE_3__*,char*) ;
 int stub9 (TYPE_3__*,char*) ;

void PrintCmdHelp(CONSOLE *c, char *cmd_name, TOKEN_LIST *param_list)
{
 wchar_t tmp[MAX_SIZE];
 wchar_t *buf;
 UINT buf_size;
 wchar_t *description, *args, *help;
 UNI_TOKEN_LIST *t;
 UINT width;
 UINT i;
 char *space;

 if (c == ((void*)0) || cmd_name == ((void*)0) || param_list == ((void*)0))
 {
  return;
 }

 width = GetConsoleWidth(c) - 2;

 buf_size = sizeof(wchar_t) * (width + 32);
 buf = Malloc(buf_size);

 GetCommandHelpStr(cmd_name, &description, &args, &help);

 space = MakeCharArray(' ', 2);


 UniFormat(tmp, sizeof(tmp), _UU("CMD_HELP_TITLE"), cmd_name);
 c->Write(c, tmp);
 c->Write(c, L"");


 c->Write(c, _UU("CMD_HELP_DESCRIPTION"));
 t = SeparateStringByWidth(description, width - 2);
 for (i = 0;i < t->NumTokens;i++)
 {
  UniFormat(buf, buf_size, L"%S%s", space, t->Token[i]);
  c->Write(c, buf);
 }
 UniFreeToken(t);
 c->Write(c, L"");


 c->Write(c, _UU("CMD_HELP_HELP"));
 t = SeparateStringByWidth(help, width - 2);
 for (i = 0;i < t->NumTokens;i++)
 {
  UniFormat(buf, buf_size, L"%S%s", space, t->Token[i]);
  c->Write(c, buf);
 }
 UniFreeToken(t);
 c->Write(c, L"");


 c->Write(c, _UU("CMD_HELP_USAGE"));
 t = SeparateStringByWidth(args, width - 2);
 for (i = 0;i < t->NumTokens;i++)
 {
  UniFormat(buf, buf_size, L"%S%s", space, t->Token[i]);
  c->Write(c, buf);
 }
 UniFreeToken(t);


 if (param_list->NumTokens >= 1)
 {
  c->Write(c, L"");
  c->Write(c, _UU("CMD_HELP_ARGS"));
  PrintCandidateHelp(c, cmd_name, param_list, 2);
 }

 Free(space);

 Free(buf);
}
