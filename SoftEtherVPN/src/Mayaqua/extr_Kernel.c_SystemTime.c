
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYSTEMTIME ;


 int KS_GETTIME_COUNT ;
 int KS_INC (int ) ;
 int OSGetSystemTime (int *) ;

void SystemTime(SYSTEMTIME *st)
{

 if (st == ((void*)0))
 {
  return;
 }

 OSGetSystemTime(st);


 KS_INC(KS_GETTIME_COUNT);
}
