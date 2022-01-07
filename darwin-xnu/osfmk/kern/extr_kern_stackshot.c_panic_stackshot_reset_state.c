
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * stackshot_kcdata_p ;

void
panic_stackshot_reset_state()
{
 stackshot_kcdata_p = ((void*)0);
}
