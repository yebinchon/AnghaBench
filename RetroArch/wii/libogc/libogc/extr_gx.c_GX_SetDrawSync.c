
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int GX_Flush () ;
 int GX_LOAD_BP_REG (int) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

void GX_SetDrawSync(u16 token)
{
 u32 level = 0;
 _CPU_ISR_Disable(level);
 GX_LOAD_BP_REG(0x48000000 | token);
 GX_LOAD_BP_REG(0x47000000 | token);
 GX_Flush();
 _CPU_ISR_Restore(level);
}
