
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int GXDrawDoneCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int drawDoneCB ;

GXDrawDoneCallback GX_SetDrawDoneCallback(GXDrawDoneCallback cb)
{
 u32 level;

 _CPU_ISR_Disable(level);
 GXDrawDoneCallback ret = drawDoneCB;
 drawDoneCB = cb;
 _CPU_ISR_Restore(level);
 return ret;
}
