
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int poll; } ;


 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int* _siReg ;
 TYPE_1__ sicntrl ;

void SI_DisablePolling(u32 poll)
{
 u32 level,mask;
 _CPU_ISR_Disable(level);
 mask = (poll>>24)&0xf0;
 sicntrl.poll &= ~mask;
 _siReg[12] = sicntrl.poll;
 _CPU_ISR_Restore(level);
}
