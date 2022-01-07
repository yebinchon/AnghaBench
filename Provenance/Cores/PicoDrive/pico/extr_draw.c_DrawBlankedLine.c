
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BackFill (int,int) ;
 char* DrawLineDest ;
 int DrawLineDestIncrement ;
 int FinalizeLine (int,int) ;
 int HighCol ;
 scalar_t__ HighColIncrement ;
 int PicoScanBegin (int) ;
 int PicoScanEnd (int) ;

__attribute__((used)) static void DrawBlankedLine(int line, int offs, int sh, int bgc)
{
  if (PicoScanBegin != ((void*)0))
    PicoScanBegin(line + offs);

  BackFill(bgc, sh);

  if (FinalizeLine != ((void*)0))
    FinalizeLine(sh, line);

  if (PicoScanEnd != ((void*)0))
    PicoScanEnd(line + offs);

  HighCol += HighColIncrement;
  DrawLineDest = (char *)DrawLineDest + DrawLineDestIncrement;
}
