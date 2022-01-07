
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int GXBreakPtCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int breakPtCB ;

GXBreakPtCallback GX_SetBreakPtCallback(GXBreakPtCallback cb)
{
 u32 level;

 _CPU_ISR_Disable(level);
 GXBreakPtCallback ret = breakPtCB;
 breakPtCB = cb;
 _CPU_ISR_Restore(level);
 return ret;
}
