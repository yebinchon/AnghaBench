
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT ;
struct TYPE_4__ {int ConsoleForServer; int CmdLine; void* AdminHub; scalar_t__ LastError; void* HubName; int * Rpc; int * Console; void* ServerName; int ServerPort; } ;
typedef int RPC ;
typedef TYPE_1__ PS ;
typedef int CONSOLE ;


 void* CopyStr (char*) ;
 int CopyUniStr (int *) ;
 scalar_t__ IsEmptyStr (char*) ;
 scalar_t__ UniIsEmptyStr (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

PS *NewPs(CONSOLE *c, RPC *rpc, char *servername, UINT serverport, char *hubname, char *adminhub, wchar_t *cmdline)
{
 PS *ps;

 if (c == ((void*)0) || rpc == ((void*)0) || servername == ((void*)0))
 {
  return ((void*)0);
 }

 if (IsEmptyStr(hubname))
 {
  hubname = ((void*)0);
 }
 if (IsEmptyStr(adminhub))
 {
  adminhub = ((void*)0);
 }
 if (UniIsEmptyStr(cmdline))
 {
  cmdline = ((void*)0);
 }

 ps = ZeroMalloc(sizeof(PS));
 ps->ConsoleForServer = 1;
 ps->ServerPort = serverport;
 ps->ServerName = CopyStr(servername);
 ps->Console = c;
 ps->Rpc = rpc;
 ps->HubName = CopyStr(hubname);
 ps->LastError = 0;
 ps->AdminHub = CopyStr(adminhub);
 ps->CmdLine = CopyUniStr(cmdline);

 return ps;
}
