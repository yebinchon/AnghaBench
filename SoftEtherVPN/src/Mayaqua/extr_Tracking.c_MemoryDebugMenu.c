
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 int DebugPrintAllObjects () ;
 int DebugPrintCommandList () ;
 int DebugPrintObjectInfo (int ) ;
 int FreeToken (TYPE_1__*) ;
 int GetLine (char*,int) ;
 int MAX_SIZE ;
 TYPE_1__* ParseToken (char*,char*) ;
 int Print (char*) ;
 int StrCmpi (char*,char*) ;
 int ToInt (char*) ;
 int g_memcheck ;

void MemoryDebugMenu()
{
 char tmp[MAX_SIZE];
 TOKEN_LIST *t;
 char *cmd;
 Print("Mayaqua Kernel Memory Debug Tools\n"
  "Copyright (c) SoftEther VPN Project. All Rights Reserved.\n\n");


 Print("Unfortunately The call stack is not recorded on non-Windows systems\n");
 Print("since UnixGetCallStack() and UnixGetCallStackSymbolInfo() is not implemented.\n");
 Print("Therefore please use valgrind or other memory leak check tools\n");
 Print("to get the actual call stacks of memory leak causes.\n\n");


 g_memcheck = 0;
 while (1)
 {
  Print("debug>");
  GetLine(tmp, sizeof(tmp));
  t = ParseToken(tmp, " \t");
  if (t->NumTokens == 0)
  {
   FreeToken(t);
   DebugPrintAllObjects();
   continue;
  }
  cmd = t->Token[0];
  if (!StrCmpi(cmd, "?"))
  {
   DebugPrintCommandList();
  }
  else if (!StrCmpi(cmd, "a"))
  {
   DebugPrintAllObjects();
  }
  else if (!StrCmpi(cmd, "i"))
  {
   if (t->NumTokens == 1)
   {
    Print("Usage: i <obj_id>\n\n");
   }
   else
   {
    DebugPrintObjectInfo(ToInt(t->Token[1]));
   }
  }
  else if (!StrCmpi(cmd, "q"))
  {
   break;
  }
  else if (ToInt(cmd) != 0)
  {
   DebugPrintObjectInfo(ToInt(t->Token[0]));
  }
  else
  {
   Print("Command Not Found,\n\n");
  }
  FreeToken(t);
 }
 FreeToken(t);
 g_memcheck = 1;
}
