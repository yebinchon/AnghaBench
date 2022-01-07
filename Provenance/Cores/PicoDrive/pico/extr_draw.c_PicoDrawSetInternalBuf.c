
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* DefHighCol ;
 int DrawScanline ;
 void* HighCol ;
 void* HighColBase ;
 int HighColIncrement ;

void PicoDrawSetInternalBuf(void *dest, int increment)
{
  if (dest != ((void*)0)) {
    HighColBase = dest;
    HighColIncrement = increment;
    HighCol = HighColBase + DrawScanline * increment;
  }
  else {
    HighColBase = DefHighCol;
    HighColIncrement = 0;
  }
}
