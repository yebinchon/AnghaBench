
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int EXI_EXI_IRQ ;
 int EXI_EXT_IRQ ;
 int EXI_TC_IRQ ;
 int* _exiReg ;

__attribute__((used)) static __inline__ void __exi_clearirqs(s32 nChn,u32 nEXIIrq,u32 nTCIrq,u32 nEXTIrq)
{
 u32 d;
 d = (_exiReg[nChn*5]&~(EXI_EXI_IRQ|EXI_TC_IRQ|EXI_EXT_IRQ));
 if(nEXIIrq) d |= EXI_EXI_IRQ;
 if(nTCIrq) d |= EXI_TC_IRQ;
 if(nEXTIrq) d |= EXI_EXT_IRQ;
 _exiReg[nChn*5] = d;
}
