
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __wpads_inited ;

s32 WPAD_GetStatus()
{
 s32 ret;
 u32 level;

 _CPU_ISR_Disable(level);
 ret = __wpads_inited;
 _CPU_ISR_Restore(level);

 return ret;
}
