
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AddRef (int *) ;
 int LOG_SWITCH_DAY ;
 int NewLog (char*,char*,int ) ;
 int * NewRef () ;
 int cedar_log ;
 int * cedar_log_ref ;

void StartCedarLog()
{
 if (cedar_log_ref == ((void*)0))
 {
  cedar_log_ref = NewRef();
 }
 else
 {
  AddRef(cedar_log_ref);
 }

 cedar_log = NewLog("debug_log", "debug", LOG_SWITCH_DAY);
}
