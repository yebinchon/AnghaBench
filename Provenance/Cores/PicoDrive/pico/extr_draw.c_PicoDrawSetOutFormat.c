
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdso_t ;


 int * FinalizeLine ;
 int * FinalizeLine32xRGB555 ;
 int * FinalizeLine555 ;
 int * FinalizeLine8bit ;
 int PAHW_32X ;


 int PicoAHW ;
 int PicoDrawSetOutFormat32x (int,int) ;
 int PicoDrawSetOutputMode4 (int) ;
 int rendstatus_old ;

void PicoDrawSetOutFormat(pdso_t which, int use_32x_line_mode)
{
  switch (which)
  {
    case 129:
      FinalizeLine = FinalizeLine8bit;
      break;

    case 128:
      if ((PicoAHW & PAHW_32X) && use_32x_line_mode)
        FinalizeLine = FinalizeLine32xRGB555;
      else
        FinalizeLine = FinalizeLine555;
      break;

    default:
      FinalizeLine = ((void*)0);
      break;
  }
  PicoDrawSetOutFormat32x(which, use_32x_line_mode);
  PicoDrawSetOutputMode4(which);
  rendstatus_old = -1;
}
