
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int patch_t ;
typedef int byte ;


 int PU_CACHE ;
 int SBARHEIGHT ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int V_DrawPatch (scalar_t__,scalar_t__,int,int *) ;
 int * W_CacheLumpName (char*,int ) ;
 scalar_t__ commercial ;
 scalar_t__ gamemode ;
 int memcpy (int *,int *,int) ;
 int scaledviewwidth ;
 int ** screens ;
 int viewheight ;
 scalar_t__ viewwindowx ;
 scalar_t__ viewwindowy ;

void R_FillBackScreen (void)
{
    byte* src;
    byte* dest;
    int x;
    int y;
    patch_t* patch;


    char name1[] = "FLOOR7_2";


    char name2[] = "GRNROCK";

    char* name;

    if (scaledviewwidth == 320)
 return;

    if ( gamemode == commercial)
 name = name2;
    else
 name = name1;

    src = W_CacheLumpName (name, PU_CACHE);
    dest = screens[1];

    for (y=0 ; y<SCREENHEIGHT-SBARHEIGHT ; y++)
    {
 for (x=0 ; x<SCREENWIDTH/64 ; x++)
 {
     memcpy (dest, src+((y&63)<<6), 64);
     dest += 64;
 }

 if (SCREENWIDTH&63)
 {
     memcpy (dest, src+((y&63)<<6), SCREENWIDTH&63);
     dest += (SCREENWIDTH&63);
 }
    }

    patch = W_CacheLumpName ("brdr_t",PU_CACHE);

    for (x=0 ; x<scaledviewwidth ; x+=8)
 V_DrawPatch (viewwindowx+x,viewwindowy-8,1,patch);
    patch = W_CacheLumpName ("brdr_b",PU_CACHE);

    for (x=0 ; x<scaledviewwidth ; x+=8)
 V_DrawPatch (viewwindowx+x,viewwindowy+viewheight,1,patch);
    patch = W_CacheLumpName ("brdr_l",PU_CACHE);

    for (y=0 ; y<viewheight ; y+=8)
 V_DrawPatch (viewwindowx-8,viewwindowy+y,1,patch);
    patch = W_CacheLumpName ("brdr_r",PU_CACHE);

    for (y=0 ; y<viewheight ; y+=8)
 V_DrawPatch (viewwindowx+scaledviewwidth,viewwindowy+y,1,patch);



    V_DrawPatch (viewwindowx-8,
   viewwindowy-8,
   1,
   W_CacheLumpName ("brdr_tl",PU_CACHE));

    V_DrawPatch (viewwindowx+scaledviewwidth,
   viewwindowy-8,
   1,
   W_CacheLumpName ("brdr_tr",PU_CACHE));

    V_DrawPatch (viewwindowx-8,
   viewwindowy+viewheight,
   1,
   W_CacheLumpName ("brdr_bl",PU_CACHE));

    V_DrawPatch (viewwindowx+scaledviewwidth,
   viewwindowy+viewheight,
   1,
   W_CacheLumpName ("brdr_br",PU_CACHE));
}
