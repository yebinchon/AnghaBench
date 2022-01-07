
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int address_pointer; int attenuation; int wave; int output; } ;
struct TYPE_3__ {int pcm8b; } ;
struct Slot {TYPE_2__ state; TYPE_1__ regs; } ;


 int SoundRamReadByte (int) ;
 int SoundRamReadWord (int) ;

void op3(struct Slot * slot)
{
   u32 addr = (slot->state.address_pointer) & 0x7FFFF;

   if (slot->state.attenuation > 0x3bf)
      return;

   if (!slot->regs.pcm8b)
      slot->state.wave = SoundRamReadWord(addr);
   else
      slot->state.wave = SoundRamReadByte(addr) << 8;

   slot->state.output = slot->state.wave;
}
