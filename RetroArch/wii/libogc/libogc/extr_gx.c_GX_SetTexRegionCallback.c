
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int GXTexRegionCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int regionCB ;

GXTexRegionCallback GX_SetTexRegionCallback(GXTexRegionCallback cb)
{
 u32 level;
 GXTexRegionCallback ret;

 _CPU_ISR_Disable(level);
 ret = regionCB;
 regionCB = cb;
 _CPU_ISR_Restore(level);

 return ret;
}
