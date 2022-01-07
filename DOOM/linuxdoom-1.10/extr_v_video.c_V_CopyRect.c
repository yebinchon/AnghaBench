
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
V_CopyRect
( int srcx,
  int srcy,
  int srcscrn,
  int width,
  int height,
  int destx,
  int desty,
  int destscrn )
{
    byte* src;
    byte* dest;
    V_MarkRect (destx, desty, width, height);

    src = screens[srcscrn]+SCREENWIDTH*srcy+srcx;
    dest = screens[destscrn]+SCREENWIDTH*desty+destx;

    for ( ; height>0 ; height--)
    {
 memcpy (dest, src, width);
 src += SCREENWIDTH;
 dest += SCREENWIDTH;
    }
}
