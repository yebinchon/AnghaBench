
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int fiq_context_init (int ) ;

void
fiq_context_bootstrap(boolean_t enable_fiq)
{
 fiq_context_init(enable_fiq);
}
