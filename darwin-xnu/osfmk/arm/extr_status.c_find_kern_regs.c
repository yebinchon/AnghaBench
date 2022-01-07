
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct arm_saved_state {int dummy; } ;
struct TYPE_2__ {struct arm_saved_state* cpu_int_state; } ;


 scalar_t__ current_thread () ;
 TYPE_1__* getCpuDatap () ;

struct arm_saved_state *
find_kern_regs(
        thread_t thread)
{



 if (thread != current_thread() || getCpuDatap()->cpu_int_state == ((void*)0))
  return ((struct arm_saved_state *) ((void*)0));
 else
  return (getCpuDatap()->cpu_int_state);

}
