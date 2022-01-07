
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int patch_t ;


 int F_DrawPatchCol (int,int *,int) ;
 int PU_CACHE ;
 int PU_LEVEL ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int S_StartSound (int *,int ) ;
 int V_DrawPatch (int,int,int ,int *) ;
 int V_MarkRect (int ,int ,int,int) ;
 int * W_CacheLumpName (char*,int ) ;
 int finalecount ;
 int sfx_pistol ;
 int sprintf (char*,char*,int) ;

void F_BunnyScroll (void)
{
    int scrolled;
    int x;
    patch_t* p1;
    patch_t* p2;
    char name[10];
    int stage;
    static int laststage;

    p1 = W_CacheLumpName ("PFUB2", PU_LEVEL);
    p2 = W_CacheLumpName ("PFUB1", PU_LEVEL);

    V_MarkRect (0, 0, SCREENWIDTH, SCREENHEIGHT);

    scrolled = 320 - (finalecount-230)/2;
    if (scrolled > 320)
 scrolled = 320;
    if (scrolled < 0)
 scrolled = 0;

    for ( x=0 ; x<SCREENWIDTH ; x++)
    {
 if (x+scrolled < 320)
     F_DrawPatchCol (x, p1, x+scrolled);
 else
     F_DrawPatchCol (x, p2, x+scrolled - 320);
    }

    if (finalecount < 1130)
 return;
    if (finalecount < 1180)
    {
 V_DrawPatch ((SCREENWIDTH-13*8)/2,
       (SCREENHEIGHT-8*8)/2,0, W_CacheLumpName ("END0",PU_CACHE));
 laststage = 0;
 return;
    }

    stage = (finalecount-1180) / 5;
    if (stage > 6)
 stage = 6;
    if (stage > laststage)
    {
 S_StartSound (((void*)0), sfx_pistol);
 laststage = stage;
    }

    sprintf (name,"END%i",stage);
    V_DrawPatch ((SCREENWIDTH-13*8)/2, (SCREENHEIGHT-8*8)/2,0, W_CacheLumpName (name,PU_CACHE));
}
