
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int far; } ;
typedef TYPE_1__ ex_cb_state_t ;
typedef int ex_cb_class_t ;
typedef int ex_cb_action_t ;


 int EXCB_ACTION_NONE ;
 int EXCB_ACTION_RERUN ;
 int EXCB_ACTION_TEST_FAIL ;



__attribute__((used)) static ex_cb_action_t excb_test_action(
 ex_cb_class_t cb_class,
 void *refcon,
 const ex_cb_state_t *state
 )
{
 ex_cb_state_t *context = (ex_cb_state_t *)refcon;

 if ((((void*)0) == refcon) || (((void*)0) == state))
 {
  return EXCB_ACTION_TEST_FAIL;
 }

 context->far = state->far;

 switch (cb_class)
 {
  case 129:
   return EXCB_ACTION_RERUN;
  case 128:
   return EXCB_ACTION_NONE;
  default:
   return EXCB_ACTION_TEST_FAIL;
 }
}
