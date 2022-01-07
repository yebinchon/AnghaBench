
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GX_Flush () ;
 int GX_LOAD_BP_REG (int) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 scalar_t__ _gxfinished ;

void GX_SetDrawDone()
{
 u32 level;
 _CPU_ISR_Disable(level);
 GX_LOAD_BP_REG(0x45000002);
 GX_Flush();
 _gxfinished = 0;
 _CPU_ISR_Restore(level);
}
