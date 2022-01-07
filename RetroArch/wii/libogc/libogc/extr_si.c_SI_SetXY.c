
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int poll; } ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int _SHIFTL (int ,int,int) ;
 int* _siReg ;
 TYPE_1__ sicntrl ;

void SI_SetXY(u16 line,u8 cnt)
{
 u32 level;
 _CPU_ISR_Disable(level);
 sicntrl.poll = (sicntrl.poll&~0x3ffff00)|_SHIFTL(line,16,10)|_SHIFTL(cnt,8,8);
 _siReg[12] = sicntrl.poll;
 _CPU_ISR_Restore(level);
}
