
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int arm_saved_state_t ;
struct TYPE_2__ {int * x; } ;


 int mach_continuous_time () ;
 TYPE_1__* saved_state64 (int *) ;

__attribute__((used)) static void
handle_mach_continuous_time_trap(arm_saved_state_t *state)
{
 uint64_t now = mach_continuous_time();
 saved_state64(state)->x[0] = now;
}
