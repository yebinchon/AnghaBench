
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SBARHEIGHT ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int* columnofs ;
 scalar_t__* screens ;
 int viewwindowx ;
 int viewwindowy ;
 scalar_t__* ylookup ;

void
R_InitBuffer
( int width,
  int height )
{
    int i;




    viewwindowx = (SCREENWIDTH-width) >> 1;


    for (i=0 ; i<width ; i++)
 columnofs[i] = viewwindowx + i;


    if (width == SCREENWIDTH)
 viewwindowy = 0;
    else
 viewwindowy = (SCREENHEIGHT-SBARHEIGHT-height) >> 1;


    for (i=0 ; i<height ; i++)
 ylookup[i] = screens[0] + (i+viewwindowy)*SCREENWIDTH;
}
