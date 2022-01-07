
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xnupost_test_t ;
typedef size_t uint32_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int xt_retval; int xt_test_actions; scalar_t__ xt_end_time; scalar_t__ xt_begin_time; } ;


 int KERN_SUCCESS ;
 int XT_ACTION_NONE ;

kern_return_t
xnupost_reset_tests(xnupost_test_t test_list, uint32_t test_count)
{
 uint32_t i = 0;
 xnupost_test_t testp;
 for (; i < test_count; i++) {
  testp = &test_list[i];
  testp->xt_begin_time = 0;
  testp->xt_end_time = 0;
  testp->xt_test_actions = XT_ACTION_NONE;
  testp->xt_retval = -1;
 }
 return KERN_SUCCESS;
}
