
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_map_offset_t ;
typedef int uint8_t ;
typedef TYPE_1__* cpx_t ;
struct TYPE_3__ {int cpx_flags; } ;


 int CPX_WRITE_PROTECTABLE ;
 int FALSE ;
 int PAGE_SIZE ;
 int VM_PROT_READ ;
 int kernel_map ;
 int vm_map_protect (int ,int ,int ,int ,int ) ;

void cpx_writeprotect (cpx_t cpx)
{







 (void) cpx;

 return;
}
