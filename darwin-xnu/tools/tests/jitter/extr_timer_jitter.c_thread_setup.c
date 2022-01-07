
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int period; int constraint; int computation; int preemptible; } ;
typedef TYPE_1__ thread_time_constraint_policy_data_t ;
typedef int thread_policy_t ;
struct TYPE_5__ {int timeshare; } ;
typedef TYPE_2__ thread_extended_policy_data_t ;
typedef int my_policy_type_t ;
struct TYPE_6__ {int denom; int numer; } ;


 int COMPUTATION_NANOS ;
 int CONSTRAINT_NANOS ;



 int THREAD_EXTENDED_POLICY ;
 int THREAD_EXTENDED_POLICY_COUNT ;
 int THREAD_TIME_CONSTRAINT_POLICY ;
 int THREAD_TIME_CONSTRAINT_POLICY_COUNT ;
 int assert (int,int ) ;
 int fail ;
 TYPE_3__ g_mti ;
 int mach_thread_self () ;
 int printf (char*) ;
 int thread_policy_set (int ,int ,int ,int ) ;

int
thread_setup(my_policy_type_t pol)
{
 int res;

 switch (pol) {
  case 128:
  {
   return 0;
  }
  case 129:
  {
   thread_time_constraint_policy_data_t pol;


   pol.period = 100000;
   pol.constraint = CONSTRAINT_NANOS * g_mti.denom / g_mti.numer;
   pol.computation = COMPUTATION_NANOS * g_mti.denom / g_mti.numer;
   pol.preemptible = 0;

   res = thread_policy_set(mach_thread_self(), THREAD_TIME_CONSTRAINT_POLICY, (thread_policy_t) &pol, THREAD_TIME_CONSTRAINT_POLICY_COUNT);
   assert(res == 0, fail);
   break;
  }
  case 130:
  {
   thread_extended_policy_data_t pol;
   pol.timeshare = 0;

   res = thread_policy_set(mach_thread_self(), THREAD_EXTENDED_POLICY, (thread_policy_t) &pol, THREAD_EXTENDED_POLICY_COUNT);
   assert(res == 0, fail);
   break;
  }
  default:
  {
   printf("invalid policy type\n");
   return 1;
  }
 }

 return 0;
fail:
 return 1;
}
