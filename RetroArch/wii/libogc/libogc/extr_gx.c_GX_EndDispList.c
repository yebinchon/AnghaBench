
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ gxFifoUnlinked; scalar_t__ saveDLctx; } ;


 int GX_GetCPUFifo (int *) ;
 int GX_GetFifoCount (int *) ;
 scalar_t__ GX_GetFifoWrap (int *) ;
 int GX_SetCPUFifo (int *) ;
 int STRUCT_REGDEF_SIZE ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 TYPE_1__* __gx ;
 int __gxregs ;
 int _gx_dl_fifoobj ;
 int _gx_old_cpufifo ;
 int _gx_saved_data ;
 int memcpy (int ,int ,int ) ;

u32 GX_EndDispList()
{
 u32 level;
 u8 wrap = 0;

 GX_GetCPUFifo(&_gx_dl_fifoobj);
 GX_SetCPUFifo(&_gx_old_cpufifo);

 if(__gx->saveDLctx) {
  _CPU_ISR_Disable(level);
  memcpy(__gxregs,_gx_saved_data,STRUCT_REGDEF_SIZE);
  _CPU_ISR_Restore(level);
 }

 __gx->gxFifoUnlinked = 0;

 wrap = GX_GetFifoWrap(&_gx_dl_fifoobj);
 if(wrap) return 0;

 return GX_GetFifoCount(&_gx_dl_fifoobj);
}
