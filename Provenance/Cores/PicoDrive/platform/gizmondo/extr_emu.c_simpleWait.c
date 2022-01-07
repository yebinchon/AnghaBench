
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ GetTickCount () ;
 int Sleep (int) ;
 int spend_cycles (int) ;

__attribute__((used)) static void simpleWait(DWORD until)
{
 DWORD tval;
 int diff;

 tval = GetTickCount();
 diff = (int)until - (int)tval;
 if (diff >= 2)
  Sleep(diff - 1);

 while ((tval = GetTickCount()) < until && until - tval < 512)
  spend_cycles(1024*2);
}
