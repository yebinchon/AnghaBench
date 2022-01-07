
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ threeD; int rbfbb; int rtfbb; int bfbb; int tfbb; void* bufAddr; } ;


 TYPE_1__ HorVer ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __setFbbRegs (TYPE_1__*,int *,int *,int *,int *) ;
 int * _viReg ;
 int fbSet ;
 int * regs ;

void VIDEO_SetFramebuffer(void *fb)
{
 u32 level;

 _CPU_ISR_Disable(level);
 fbSet = 1;
 HorVer.bufAddr = fb;
 __setFbbRegs(&HorVer,&HorVer.tfbb,&HorVer.bfbb,&HorVer.rtfbb,&HorVer.rbfbb);
 _viReg[14] = regs[14];
 _viReg[15] = regs[15];

 _viReg[18] = regs[18];
 _viReg[19] = regs[19];

 if(HorVer.threeD) {
  _viReg[16] = regs[16];
  _viReg[17] = regs[17];

  _viReg[20] = regs[20];
  _viReg[21] = regs[21];
 }
 _CPU_ISR_Restore(level);
}
