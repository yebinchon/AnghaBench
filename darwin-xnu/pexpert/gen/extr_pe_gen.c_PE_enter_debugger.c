
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DB_NMI ;
 int DEBUGFlag ;
 int Debugger (char const*) ;

void PE_enter_debugger(const char *cause)
{
  if (DEBUGFlag & DB_NMI)
    Debugger(cause);
}
