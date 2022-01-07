
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static bool
ErrorIfNotASuitableDeadlockFactor(double *newval, void **extra, GucSource source)
{
 if (*newval <= 1.0 && *newval != -1.0)
 {
  ereport(WARNING, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg(
         "citus.distributed_deadlock_detection_factor cannot be less than 1. "
         "To disable distributed deadlock detection set the value to -1.")));

  return 0;
 }

 return 1;
}
