
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct arm_saved_state {int dummy; } ;


 struct arm_saved_state* get_user_regs (int ) ;

struct arm_saved_state *
find_user_regs(
        thread_t thread)
{
 return get_user_regs(thread);
}
