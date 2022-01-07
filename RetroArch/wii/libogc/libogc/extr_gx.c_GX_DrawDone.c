
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GX_Flush () ;
 int GX_LOAD_BP_REG (int) ;
 int LWP_ThreadSleep (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Flash (int ) ;
 int _CPU_ISR_Restore (int ) ;
 scalar_t__ _gxfinished ;
 int _gxwaitfinish ;

void GX_DrawDone()
{
 u32 level;

 _CPU_ISR_Disable(level);
 GX_LOAD_BP_REG(0x45000002);
 GX_Flush();

 _gxfinished = 0;
 _CPU_ISR_Flash(level);

 while(!_gxfinished)
  LWP_ThreadSleep(_gxwaitfinish);
 _CPU_ISR_Restore(level);
}
