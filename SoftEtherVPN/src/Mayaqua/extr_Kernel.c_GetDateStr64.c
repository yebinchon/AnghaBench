
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;
typedef int SYSTEMTIME ;


 int GetDateStr (char*,int ,int *) ;
 int StrCpy (char*,int ,char*) ;
 int UINT64ToSystem (int *,int ) ;

void GetDateStr64(char *str, UINT size, UINT64 sec64)
{
 SYSTEMTIME st;
 if (sec64 == 0)
 {
  StrCpy(str, size, "(Unknown)");
  return;
 }
 UINT64ToSystem(&st, sec64);
 GetDateStr(str, size, &st);
}
