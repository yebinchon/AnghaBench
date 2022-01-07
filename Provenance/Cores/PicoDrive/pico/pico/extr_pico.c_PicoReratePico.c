
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pal; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int r12; } ;


 TYPE_3__ Pico ;
 int PicoPicoPCMRerate (int) ;
 TYPE_2__ PicoPicohw ;
 int fifo_bytes_line ;
 int* guessed_rates ;

void PicoReratePico(void)
{
  int rate = guessed_rates[PicoPicohw.r12 & 7];
  if (Pico.m.pal)
       fifo_bytes_line = (rate<<16)/50/312/2;
  else fifo_bytes_line = (rate<<16)/60/262/2;
  PicoPicoPCMRerate(rate);
}
