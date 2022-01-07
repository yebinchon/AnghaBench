
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int CmdLine; int * Console; } ;
typedef TYPE_1__ PT ;
typedef int CONSOLE ;


 int CopyUniStr (int *) ;
 scalar_t__ UniIsEmptyStr (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

PT *NewPt(CONSOLE *c, wchar_t *cmdline)
{
 PT *pt;

 if (c == ((void*)0))
 {
  return ((void*)0);
 }

 if (UniIsEmptyStr(cmdline))
 {
  cmdline = ((void*)0);
 }

 pt = ZeroMalloc(sizeof(PT));
 pt->Console = c;
 pt->CmdLine = CopyUniStr(cmdline);

 return pt;
}
