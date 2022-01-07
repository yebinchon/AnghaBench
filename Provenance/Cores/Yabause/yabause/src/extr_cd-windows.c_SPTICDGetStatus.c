
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int cd_cs ;
 int drivestatus ;

int SPTICDGetStatus() {
 int status;
 EnterCriticalSection(&cd_cs);
 status = drivestatus;
 LeaveCriticalSection(&cd_cs);
 return status;
}
