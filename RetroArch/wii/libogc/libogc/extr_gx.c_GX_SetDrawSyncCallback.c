
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int GXDrawSyncCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int tokenCB ;

GXDrawSyncCallback GX_SetDrawSyncCallback(GXDrawSyncCallback cb)
{
 u32 level;

 _CPU_ISR_Disable(level);
 GXDrawSyncCallback ret = tokenCB;
 tokenCB = cb;
 _CPU_ISR_Restore(level);
 return ret;
}
