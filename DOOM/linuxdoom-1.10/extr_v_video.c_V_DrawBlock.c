
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int I_Error (char*) ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int V_MarkRect (int,int,int,int) ;
 int memcpy (int *,int *,int) ;
 int ** screens ;

void
V_DrawBlock
( int x,
  int y,
  int scrn,
  int width,
  int height,
  byte* src )
{
    byte* dest;
    V_MarkRect (x, y, width, height);

    dest = screens[scrn] + y*SCREENWIDTH+x;

    while (height--)
    {
 memcpy (dest, src, width);
 src += width;
 dest += SCREENWIDTH;
    }
}
