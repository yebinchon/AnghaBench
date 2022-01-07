
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int sound_ram_mask; } ;
struct TYPE_4__ {int sa; int lsa; int lsa_shifted; int lea; int lea_shifted; int looplen_shifted; scalar_t__ pcm8b; int * buf; } ;
typedef TYPE_1__ SlotState ;


 int SCSP_FREQ_LOW_BITS ;
 int * SoundRam ;
 TYPE_2__ scsp ;

__attribute__((used)) static void ScspUpdateSlotAddress(SlotState *slot)
{
   u32 max_samples;

   if (slot->pcm8b)
      slot->sa &= ~1;
   slot->sa &= scsp.sound_ram_mask;
   slot->buf = &SoundRam[slot->sa];
   max_samples = scsp.sound_ram_mask - slot->sa;
   if (slot->pcm8b)
      max_samples >>= 1;

   if (slot->lsa > max_samples)
      slot->lsa = max_samples;
   slot->lsa_shifted = slot->lsa << SCSP_FREQ_LOW_BITS;

   if (slot->lea > max_samples)
      slot->lea = max_samples;
   slot->lea_shifted = ((slot->lea + 1) << SCSP_FREQ_LOW_BITS) - 1;

   slot->looplen_shifted = slot->lea_shifted - slot->lsa_shifted + 1;
}
