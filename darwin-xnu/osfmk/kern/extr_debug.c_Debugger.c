
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUGGER_OPTION_NONE ;
 int DebuggerWithContext (int ,int *,char const*,int ) ;

void
Debugger(const char *message)
{
 DebuggerWithContext(0, ((void*)0), message, DEBUGGER_OPTION_NONE);
}
