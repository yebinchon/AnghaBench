
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
typedef int s16 ;
struct TYPE_4__ {scalar_t__ env_counter; scalar_t__ ssctl; } ;
typedef TYPE_1__ SlotState ;


 scalar_t__ SCSP_ENV_DECAY_END ;
 int ScspConvert32uto16s (int *,int *,int *,int) ;
 int ScspGenerateAudioForSlot (TYPE_1__*,int) ;
 int memset (int *,int ,int) ;
 int * scsp_bufL ;
 int * scsp_bufR ;

__attribute__((used)) static u32 ScspSlotDebugAudio(SlotState *slot, s32 *workbuf, s16 *buf, u32 len)
{
   s32 *bufL, *bufR;

   bufL = workbuf;
   bufR = workbuf+len;
   scsp_bufL = bufL;
   scsp_bufR = bufR;

   if (slot->env_counter >= SCSP_ENV_DECAY_END)
      return 0;

   if (slot->ssctl)
      return 0;

   memset(bufL, 0, sizeof(u32) * len);
   memset(bufR, 0, sizeof(u32) * len);
   ScspGenerateAudioForSlot(slot, len);
   ScspConvert32uto16s(bufL, bufR, buf, len);
   return len;
}
