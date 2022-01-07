
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
struct arm_saved_state {int dummy; } ;
struct TYPE_4__ {struct arm_saved_state* upcb; } ;
struct TYPE_5__ {TYPE_1__ machine; } ;



struct arm_saved_state *
find_user_regs(
        thread_t thread)
{
 return (thread->machine.upcb);
}
