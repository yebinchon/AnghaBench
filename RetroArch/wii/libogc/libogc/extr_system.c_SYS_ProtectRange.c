
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int DCFlushRange (void*,int) ;
 int IRQMASK (int) ;
 int SYS_PROTECTCHANMAX ;
 int SYS_PROTECTRDWR ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int,int,int) ;
 int __MaskIrq (int ) ;
 int __UnmaskIrq (int ) ;
 int* _memReg ;

void SYS_ProtectRange(u32 chan,void *addr,u32 bytes,u32 cntrl)
{
 u16 rcntrl;
 u32 pstart,pend,level;

 if(chan<SYS_PROTECTCHANMAX) {
  pstart = ((u32)addr)&~0x3ff;
  pend = ((((u32)addr)+bytes)+1023)&~0x3ff;
  DCFlushRange((void*)pstart,(pend-pstart));

  _CPU_ISR_Disable(level);

  __UnmaskIrq(IRQMASK(chan));
  _memReg[chan<<2] = _SHIFTR(pstart,10,16);
  _memReg[(chan<<2)+1] = _SHIFTR(pend,10,16);

  rcntrl = _memReg[8];
  rcntrl = (rcntrl&~(_SHIFTL(3,(chan<<1),2)))|(_SHIFTL(cntrl,(chan<<1),2));
  _memReg[8] = rcntrl;

  if(cntrl==SYS_PROTECTRDWR)
   __MaskIrq(IRQMASK(chan));

  _CPU_ISR_Restore(level);
 }
}
