
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t s32 ;
struct TYPE_3__ {scalar_t__ err; int triggerR; int triggerL; int substickY; int substickX; int stickY; int stickX; } ;
typedef TYPE_1__ PADStatus ;


 size_t PAD_CHANMAX ;
 scalar_t__ PAD_ERR_NONE ;
 int * __pad_clampregion ;
 int __pad_clampstick (int *,int *,int ,int ,int ) ;
 int __pad_clamptrigger (int *) ;

void PAD_Clamp(PADStatus *status)
{
 s32 i;

 for(i=0;i<PAD_CHANMAX;i++) {
  if(status[i].err==PAD_ERR_NONE) {
   __pad_clampstick(&status[i].stickX,&status[i].stickY,__pad_clampregion[3],__pad_clampregion[4],__pad_clampregion[2]);
   __pad_clampstick(&status[i].substickX,&status[i].substickY,__pad_clampregion[6],__pad_clampregion[7],__pad_clampregion[5]);
   __pad_clamptrigger(&status[i].triggerL);
   __pad_clamptrigger(&status[i].triggerR);
  }
 }
}
