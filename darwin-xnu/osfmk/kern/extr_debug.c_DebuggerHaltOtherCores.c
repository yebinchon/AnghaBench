
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int boolean_t ;


 int DebuggerXCallEnter (int ) ;
 int KERN_SUCCESS ;
 int mp_kdp_enter (int ) ;

__attribute__((used)) static kern_return_t
DebuggerHaltOtherCores(boolean_t proceed_on_failure)
{



#pragma unused(proceed_on_failure)
 mp_kdp_enter(proceed_on_failure);
 return KERN_SUCCESS;

}
