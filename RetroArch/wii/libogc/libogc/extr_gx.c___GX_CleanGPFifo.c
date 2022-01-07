
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct __gxfifo {int rd_ptr; int wt_ptr; scalar_t__ rdwt_dst; } ;
struct TYPE_2__ {int cpCRreg; } ;


 int FALSE ;
 scalar_t__ MEM_VIRTUAL_TO_PHYSICAL (int) ;
 int TRUE ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int _SHIFTL (scalar_t__,int ,int) ;
 int _SHIFTR (scalar_t__,int,int) ;
 int __GX_FifoLink (int ) ;
 int __GX_FifoReadDisable () ;
 int __GX_FifoReadEnable () ;
 int __GX_WriteFifoIntEnable (int ,int ) ;
 int __GX_WriteFifoIntReset (int ,int ) ;
 TYPE_1__* __gx ;
 int* _cpReg ;
 scalar_t__ _cpgplinked ;
 int _cpufifo ;
 int _gpfifo ;
 int _gxgpfifoready ;
 int* _piReg ;
 int * breakPtCB ;
 int ppcsync () ;

__attribute__((used)) static void __GX_CleanGPFifo()
{
 u32 level;
 struct __gxfifo *gpfifo = (struct __gxfifo*)&_gpfifo;
 struct __gxfifo *cpufifo = (struct __gxfifo*)&_cpufifo;

 if(!_gxgpfifoready) return;

 _CPU_ISR_Disable(level);
 __GX_FifoReadDisable();
 __GX_WriteFifoIntEnable(FALSE,FALSE);

 gpfifo->rd_ptr = gpfifo->wt_ptr;
 gpfifo->rdwt_dst = 0;


 _cpReg[24] = _SHIFTL(gpfifo->rdwt_dst,0,16);
 _cpReg[25] = _SHIFTR(gpfifo->rdwt_dst,16,16);


 _cpReg[26] = _SHIFTL(MEM_VIRTUAL_TO_PHYSICAL(gpfifo->wt_ptr),0,16);
 _cpReg[27] = _SHIFTR(MEM_VIRTUAL_TO_PHYSICAL(gpfifo->wt_ptr),16,16);


 _cpReg[28] = _SHIFTL(MEM_VIRTUAL_TO_PHYSICAL(gpfifo->rd_ptr),0,16);
 _cpReg[29] = _SHIFTR(MEM_VIRTUAL_TO_PHYSICAL(gpfifo->rd_ptr),16,16);
 ppcsync();

 if(_cpgplinked) {
  cpufifo->rd_ptr = gpfifo->rd_ptr;
  cpufifo->wt_ptr = gpfifo->wt_ptr;
  cpufifo->rdwt_dst = gpfifo->rdwt_dst;

  _piReg[5] = (cpufifo->wt_ptr&0x1FFFFFE0);
  __GX_WriteFifoIntEnable(TRUE,FALSE);
  __GX_FifoLink(TRUE);
 }
 __gx->cpCRreg &= ~0x22;
 _cpReg[1] = __gx->cpCRreg;
 breakPtCB = ((void*)0);

 __GX_WriteFifoIntReset(TRUE,TRUE);
 __GX_FifoReadEnable();
 _CPU_ISR_Restore(level);
}
