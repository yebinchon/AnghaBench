
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int arm_saved_state_t ;
struct TYPE_4__ {int ss; } ;
typedef TYPE_1__ arm_context_t ;


 int ASSERT_CONTEXT_SANITY (TYPE_1__*) ;
 int arm64_platform_error (int *,int ,int ) ;
 int get_preemption_level () ;
 int panic (char*,int,int) ;

void
sleh_serror(arm_context_t *context, uint32_t esr, vm_offset_t far)
{
 arm_saved_state_t *state = &context->ss;




 ASSERT_CONTEXT_SANITY(context);
 arm64_platform_error(state, esr, far);




}
