
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* rip; } ;
struct TYPE_4__ {struct TYPE_4__* cr2; TYPE_1__ isf; } ;
typedef TYPE_2__ x86_saved_state64_t ;


 int kprintf (char*,...) ;

void print_saved_state(void *state)
{
    x86_saved_state64_t *saved_state;

    saved_state = state;

 kprintf("pc = 0x%llx\n", saved_state->isf.rip);
 kprintf("cr2= 0x%llx\n", saved_state->cr2);
 kprintf("rp = TODO FIXME\n");
 kprintf("sp = %p\n", saved_state);

}
