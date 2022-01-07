
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int I_Error (char*) ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int memcpy (int *,int *,int) ;
 int ** screens ;

void
V_GetBlock
( int x,
  int y,
  int scrn,
  int width,
  int height,
  byte* dest )
{
    byte* src;
    src = screens[scrn] + y*SCREENWIDTH+x;

    while (height--)
    {
 memcpy (dest, src, width);
 src += SCREENWIDTH;
 dest += width;
    }
}
