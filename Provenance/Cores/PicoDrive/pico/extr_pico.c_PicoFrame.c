
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_count; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int PAHW_32X ;
 int PAHW_MCD ;
 int PAHW_SMS ;
 TYPE_2__ Pico ;
 int PicoAHW ;
 int PicoFrame32x () ;
 int PicoFrameHints () ;
 int PicoFrameMCD () ;
 int PicoFrameMS () ;
 int PicoFrameStart () ;
 int frame ;
 int pprof_end (int ) ;
 int pprof_start (int ) ;

void PicoFrame(void)
{
  pprof_start(frame);

  Pico.m.frame_count++;

  if (PicoAHW & PAHW_SMS) {
    PicoFrameMS();
    goto end;
  }

  if (PicoAHW & PAHW_32X) {
    PicoFrame32x();
    goto end;
  }

  if (PicoAHW & PAHW_MCD) {
    PicoFrameMCD();
    goto end;
  }



  PicoFrameStart();
  PicoFrameHints();

end:
  pprof_end(frame);
}
