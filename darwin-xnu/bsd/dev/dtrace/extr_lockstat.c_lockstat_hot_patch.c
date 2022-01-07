
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef void* uint8_t ;
typedef void* uint32_t ;
typedef int instr ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {int lsap_probe; int * lsap_patch_point; } ;


 void* BXLR ;
 void* NOP ;
 void* RET ;
 TYPE_1__* assembly_probes ;
 int ml_nofault_copy (int ,int ,int) ;

__attribute__((used)) static
void lockstat_hot_patch(boolean_t active, int ls_probe)
{
#pragma unused(active)
 int i;





 for (i = 0; assembly_probes[i].lsap_patch_point; i++) {
  if (ls_probe == assembly_probes[i].lsap_probe)

  {
   uint8_t instr;
   instr = (active ? NOP : RET );
   (void) ml_nofault_copy( (vm_offset_t)&instr, *(assembly_probes[i].lsap_patch_point),
        sizeof(instr));
  }
 }
}
