
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rip; } ;
struct TYPE_5__ {TYPE_1__ isf; } ;
typedef TYPE_2__ x86_saved_state64_t ;
typedef int vm_offset_t ;



__attribute__((used)) static void
set_recovery_ip(x86_saved_state64_t *saved_state, vm_offset_t ip)
{
        saved_state->isf.rip = ip;
}
