
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _CPU_ISR_Disable (int ) ;

u32 IRQ_Disable()
{
 u32 level;
 _CPU_ISR_Disable(level);
 return level;
}
