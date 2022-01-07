
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int ConsoleForServer; int CmdLine; int * RemoteClient; scalar_t__ LastError; int * Console; int ServerName; } ;
typedef int REMOTE_CLIENT ;
typedef TYPE_1__ PC ;
typedef int CONSOLE ;


 int CopyStr (char*) ;
 int CopyUniStr (int *) ;
 scalar_t__ UniIsEmptyStr (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

PC *NewPc(CONSOLE *c, REMOTE_CLIENT *remote_client, char *servername, wchar_t *cmdline)
{
 PC *pc;

 if (c == ((void*)0) || remote_client == ((void*)0) || servername == ((void*)0))
 {
  return ((void*)0);
 }
 if (UniIsEmptyStr(cmdline))
 {
  cmdline = ((void*)0);
 }

 pc = ZeroMalloc(sizeof(PC));
 pc->ConsoleForServer = 0;
 pc->ServerName = CopyStr(servername);
 pc->Console = c;
 pc->LastError = 0;
 pc->RemoteClient = remote_client;
 pc->CmdLine = CopyUniStr(cmdline);

 return pc;
}
