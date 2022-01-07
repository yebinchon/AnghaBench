
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeLog (int *) ;
 scalar_t__ Release (int *) ;
 int * cedar_log ;
 int * cedar_log_ref ;

void StopCedarLog()
{
 if (cedar_log_ref == ((void*)0))
 {
  return;
 }

 if (Release(cedar_log_ref) == 0)
 {
  FreeLog(cedar_log);
  cedar_log = ((void*)0);
  cedar_log_ref = ((void*)0);
 }
}
