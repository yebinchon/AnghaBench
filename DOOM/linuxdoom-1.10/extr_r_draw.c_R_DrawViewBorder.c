
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_VideoErase (int,int) ;
 int SBARHEIGHT ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int V_MarkRect (int ,int ,int,int) ;
 int scaledviewwidth ;
 int viewheight ;

void R_DrawViewBorder (void)
{
    int top;
    int side;
    int ofs;
    int i;

    if (scaledviewwidth == SCREENWIDTH)
 return;

    top = ((SCREENHEIGHT-SBARHEIGHT)-viewheight)/2;
    side = (SCREENWIDTH-scaledviewwidth)/2;


    R_VideoErase (0, top*SCREENWIDTH+side);


    ofs = (viewheight+top)*SCREENWIDTH-side;
    R_VideoErase (ofs, top*SCREENWIDTH+side);


    ofs = top*SCREENWIDTH + SCREENWIDTH-side;
    side <<= 1;

    for (i=1 ; i<viewheight ; i++)
    {
 R_VideoErase (ofs, side);
 ofs += SCREENWIDTH;
    }


    V_MarkRect (0,0,SCREENWIDTH, SCREENHEIGHT-SBARHEIGHT);
}
