
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int SYSTEMTIME ;


 int SystemToUINT64 (int *) ;
 int UINT64ToSystem (int *,int ) ;

void NormalizeSystem(SYSTEMTIME *st)
{
 UINT64 sec64;

 if (st == ((void*)0))
 {
  return;
 }

 sec64 = SystemToUINT64(st);
 UINT64ToSystem(st, sec64);
}
