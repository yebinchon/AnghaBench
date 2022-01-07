
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pdso_t ;
struct TYPE_2__ {void* pal_native; } ;


 scalar_t__ PDF_RGB555 ;
 int PDM32X_32X_ONLY ;
 int PDM32X_BOTH ;
 int PDM32X_OFF ;
 int Pico32xDrawMode ;
 TYPE_1__* Pico32xMem ;
 int * PicoDraw2FB ;
 int PicoDrawSetInternalBuf (int *,int) ;

void PicoDrawSetOutFormat32x(pdso_t which, int use_32x_line_mode)
{





  if (which == PDF_RGB555 && use_32x_line_mode) {

    PicoDrawSetInternalBuf(((void*)0), 0);
    Pico32xDrawMode = PDM32X_OFF;
    return;
  }


  PicoDrawSetInternalBuf(PicoDraw2FB, 328);
  Pico32xDrawMode = (which == PDF_RGB555) ? PDM32X_32X_ONLY : PDM32X_BOTH;
}
