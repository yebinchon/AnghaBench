
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebuggerXCallReturn () ;
 int mp_kdp_exit () ;

__attribute__((used)) static void
DebuggerResumeOtherCores()
{



 mp_kdp_exit();

}
