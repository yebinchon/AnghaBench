
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int TVSTAT; } ;
struct TYPE_3__ {int IsPal; int MaxLineCount; int tickfreq; int OneFrameTime; int CurSH2FreqType; } ;
typedef int LARGE_INTEGER ;


 int QueryPerformanceFrequency (int *) ;
 int ScspChangeVideoFormat (int) ;
 TYPE_2__* Vdp2Regs ;
 int YabauseChangeTiming (int ) ;
 int YabauseGetTicks () ;
 int lastticks ;
 int secs_to_ticks (int) ;
 TYPE_1__ yabsys ;

void YabauseSetVideoFormat(int type) {
   yabsys.IsPal = type;
   yabsys.MaxLineCount = type ? 313 : 263;
   yabsys.OneFrameTime =
      type ? (yabsys.tickfreq / 50) : (yabsys.tickfreq * 1001 / 60000);
   Vdp2Regs->TVSTAT = Vdp2Regs->TVSTAT | (type & 0x1);
   ScspChangeVideoFormat(type);
   YabauseChangeTiming(yabsys.CurSH2FreqType);
   lastticks = YabauseGetTicks();
}
