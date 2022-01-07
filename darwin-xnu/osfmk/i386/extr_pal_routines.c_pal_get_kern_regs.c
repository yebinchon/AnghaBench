
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86_saved_state_t ;


 int panic (char*,int *) ;

void
pal_get_kern_regs( x86_saved_state_t *state )
{
 panic( "pal_get_kern_regs called. state %p\n", state );
}
