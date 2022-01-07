
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_2__ {int deviceTreeHead; int initialized; } ;


 int DTInit (int ) ;
 TYPE_1__ PE_state ;
 int assert (int ) ;

void
PE_slide_devicetree(vm_offset_t slide)
{
 assert(PE_state.initialized);
 PE_state.deviceTreeHead += slide;
 DTInit(PE_state.deviceTreeHead);
}
