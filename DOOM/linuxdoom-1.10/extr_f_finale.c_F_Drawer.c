
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_BunnyScroll () ;
 int F_CastDrawer () ;
 int F_TextWrite () ;
 int PU_CACHE ;
 int V_DrawPatch (int ,int ,int ,int ) ;
 int W_CacheLumpName (char*,int ) ;
 int finalestage ;
 int gameepisode ;
 int gamemode ;
 int retail ;

void F_Drawer (void)
{
    if (finalestage == 2)
    {
 F_CastDrawer ();
 return;
    }

    if (!finalestage)
 F_TextWrite ();
    else
    {
 switch (gameepisode)
 {
   case 1:
     if ( gamemode == retail )
       V_DrawPatch (0,0,0,
    W_CacheLumpName("CREDIT",PU_CACHE));
     else
       V_DrawPatch (0,0,0,
    W_CacheLumpName("HELP2",PU_CACHE));
     break;
   case 2:
     V_DrawPatch(0,0,0,
   W_CacheLumpName("VICTORY2",PU_CACHE));
     break;
   case 3:
     F_BunnyScroll ();
     break;
   case 4:
     V_DrawPatch (0,0,0,
    W_CacheLumpName("ENDPIC",PU_CACHE));
     break;
 }
    }

}
