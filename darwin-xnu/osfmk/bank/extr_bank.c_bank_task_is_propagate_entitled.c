
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef int boolean_t ;


 int ENTITLEMENT_PERSONA_PROPAGATE ;
 int FALSE ;
 int IOTaskHasEntitlement (int ,int ) ;
 int TRUE ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_issuser (int ) ;

__attribute__((used)) static boolean_t
bank_task_is_propagate_entitled(task_t t)
{

 if (0 == kauth_cred_issuser(kauth_cred_get())) {

  boolean_t entitled = FALSE;
  entitled = IOTaskHasEntitlement(t, ENTITLEMENT_PERSONA_PROPAGATE);
  return entitled;
 } else {
  return TRUE;
 }
}
