
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int rbfbb; int rtfbb; int bfbb; int tfbb; void* rbufAddr; } ;


 TYPE_1__ HorVer ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __setFbbRegs (TYPE_1__*,int *,int *,int *,int *) ;
 int fbSet ;

void VIDEO_SetNextRightFramebuffer(void *fb)
{
 u32 level;

 _CPU_ISR_Disable(level);
 fbSet = 1;
 HorVer.rbufAddr = fb;
 __setFbbRegs(&HorVer,&HorVer.tfbb,&HorVer.bfbb,&HorVer.rtfbb,&HorVer.rbfbb);
 _CPU_ISR_Restore(level);
}
