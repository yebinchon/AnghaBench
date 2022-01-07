
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
struct TYPE_2__ {scalar_t__ ConsoleType; int OutputLock; } ;
typedef TYPE_1__ CONSOLE ;


 scalar_t__ CONSOLE_LOCAL ;
 int Lock (int ) ;
 int MAX_SIZE ;
 int UniEndWith (int *,char*) ;
 int UniPrint (char*,int *) ;
 int UniStrCat (int *,int,char*) ;
 int UniStrCpy (int *,int,int *) ;
 int Unlock (int ) ;

void PtTrafficPrintProc(void *param, wchar_t *str)
{
 CONSOLE *c;

 if (param == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 c = (CONSOLE *)param;

 if (c->ConsoleType == CONSOLE_LOCAL)
 {
  Lock(c->OutputLock);
  {
   wchar_t tmp[MAX_SIZE];



   UniStrCpy(tmp, sizeof(tmp), str);
   if (UniEndWith(str, L"\n") == 0)
   {
    UniStrCat(tmp, sizeof(tmp), L"\n");
   }
   UniPrint(L"%s", tmp);
  }
  Unlock(c->OutputLock);
 }
}
