
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef int SYSTEMTIME ;
typedef scalar_t__ INT64 ;


 scalar_t__ GetTimeDiffEx (int *,int) ;
 scalar_t__ SystemToUINT64 (int *) ;
 int UINT64ToSystem (int *,scalar_t__) ;

void LocalToSystem(SYSTEMTIME *system, SYSTEMTIME *local)
{
 UINT64 sec64;

 if (local == ((void*)0) || system == ((void*)0))
 {
  return;
 }

 sec64 = (UINT64)((INT64)SystemToUINT64(local) - GetTimeDiffEx(local, 1));
 UINT64ToSystem(system, sec64);
}
