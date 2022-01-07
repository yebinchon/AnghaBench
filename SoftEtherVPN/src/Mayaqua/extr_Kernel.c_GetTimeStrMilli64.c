
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;
typedef int SYSTEMTIME ;


 int GetTimeStrMilli (char*,int ,int *) ;
 scalar_t__ LocalToSystem64 (int ) ;
 int StrCpy (char*,int ,char*) ;
 scalar_t__ SystemToLocal64 (int ) ;
 int UINT64ToSystem (int *,int ) ;

void GetTimeStrMilli64(char *str, UINT size, UINT64 sec64)
{
 SYSTEMTIME st;
 if (sec64 == 0 || SystemToLocal64(sec64) == 0 || LocalToSystem64(sec64) == 0)
 {
  StrCpy(str, size, "(Unknown)");
  return;
 }
 UINT64ToSystem(&st, sec64);
 GetTimeStrMilli(str, size, &st);
}
