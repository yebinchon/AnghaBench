
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_act_context {int dummy; } ;


 int kfree (void*,int) ;

void
act_thread_cfree(void *ctx)
{
 kfree(ctx, sizeof(struct arm_act_context));
}
