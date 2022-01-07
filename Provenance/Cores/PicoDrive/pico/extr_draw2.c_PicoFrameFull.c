
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 int BackFillFull (int) ;
 int DrawDisplayFull () ;
 TYPE_2__ Pico ;
 int PicoPrepareCram () ;
 int draw ;
 int pprof_end (int ) ;
 int pprof_start (int ) ;

void PicoFrameFull()
{
 pprof_start(draw);


 if (PicoPrepareCram) PicoPrepareCram();


 BackFillFull(Pico.video.reg[7]);
 if (Pico.video.reg[1] & 0x40)
  DrawDisplayFull();

 pprof_end(draw);
}
