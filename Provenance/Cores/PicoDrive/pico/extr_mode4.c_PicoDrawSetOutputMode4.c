
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdso_t ;


 int * FinalizeLine8bitM4 ;
 int * FinalizeLineM4 ;
 int * FinalizeLineRGB555M4 ;



void PicoDrawSetOutputMode4(pdso_t which)
{
  switch (which)
  {
    case 129: FinalizeLineM4 = FinalizeLine8bitM4; break;
    case 128: FinalizeLineM4 = FinalizeLineRGB555M4; break;
    default: FinalizeLineM4 = ((void*)0); break;
  }
}
