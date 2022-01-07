
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;
typedef int SYSTEMTIME ;


 int GetDateTimeStrMilliForFileName (char*,int ,int *) ;
 int UINT64ToSystem (int *,int ) ;

void GetDateTimeStrMilli64ForFileName(char *str, UINT size, UINT64 sec64)
{
 SYSTEMTIME st;
 UINT64ToSystem(&st, sec64);
 GetDateTimeStrMilliForFileName(str, size, &st);
}
