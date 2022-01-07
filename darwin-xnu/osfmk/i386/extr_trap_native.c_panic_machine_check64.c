
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86_saved_state_t ;


 int PANIC_MACHINE_CHECK ;
 int TRUE ;
 int panic_64 (int *,int ,char*,int ) ;

void

panic_machine_check64(x86_saved_state_t *sp)
{
 panic_64(sp, PANIC_MACHINE_CHECK, "Machine Check", TRUE);

}
