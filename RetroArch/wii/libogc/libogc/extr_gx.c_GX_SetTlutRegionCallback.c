
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int GXTlutRegionCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int tlut_regionCB ;

GXTlutRegionCallback GX_SetTlutRegionCallback(GXTlutRegionCallback cb)
{
 u32 level;
 GXTlutRegionCallback ret;

 _CPU_ISR_Disable(level);
 ret = tlut_regionCB;
 tlut_regionCB = cb;
 _CPU_ISR_Restore(level);

 return ret;
}
