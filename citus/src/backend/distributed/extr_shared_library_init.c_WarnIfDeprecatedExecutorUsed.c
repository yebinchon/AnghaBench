
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int DUMMY_REAL_TIME_EXECUTOR_ENUM_VALUE ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int MULTI_EXECUTOR_ADAPTIVE ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static bool
WarnIfDeprecatedExecutorUsed(int *newval, void **extra, GucSource source)
{
 if (*newval == DUMMY_REAL_TIME_EXECUTOR_ENUM_VALUE)
 {
  ereport(WARNING, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
        errmsg("Ignoring the setting, real-time executor is "
         "deprecated")));


  *newval = MULTI_EXECUTOR_ADAPTIVE;
 }

 return 1;
}
