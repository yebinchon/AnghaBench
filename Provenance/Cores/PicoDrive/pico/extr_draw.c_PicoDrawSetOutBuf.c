
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* DrawLineDest ;
 void* DrawLineDestBase ;
 int DrawLineDestIncrement ;
 int DrawScanline ;

void PicoDrawSetOutBuf(void *dest, int increment)
{
  DrawLineDestBase = dest;
  DrawLineDestIncrement = increment;
  DrawLineDest = DrawLineDestBase + DrawScanline * increment;
}
