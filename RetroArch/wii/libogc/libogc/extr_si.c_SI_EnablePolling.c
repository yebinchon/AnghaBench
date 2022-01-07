
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int poll; } ;


 int SI_TransferCommands () ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int* _siReg ;
 TYPE_1__ sicntrl ;

void SI_EnablePolling(u32 poll)
{
 u32 level,mask;
 _CPU_ISR_Disable(level);
 poll >>= 24;
 mask = (poll>>4)&0x0f;
 sicntrl.poll &= ~mask;

 poll &= (0x03fffff0|mask);

 sicntrl.poll |= (poll&~0x03ffff00);
 SI_TransferCommands();
 _siReg[12] = sicntrl.poll;
 _CPU_ISR_Restore(level);
}
