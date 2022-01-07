
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ApplyLogRedaction (char const*) ;
 int GetCurrentTimestamp () ;
 int LOG ;
 int LogDistributedDeadlockDetection ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int ) ;
 int timestamptz_to_str (int ) ;

__attribute__((used)) static void
LogDistributedDeadlockDebugMessage(const char *errorMessage)
{
 if (!LogDistributedDeadlockDetection)
 {
  return;
 }

 ereport(LOG, (errmsg("[%s] %s", timestamptz_to_str(GetCurrentTimestamp()),
       ApplyLogRedaction(errorMessage))));
}
