
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ y; int x; } ;


 int LINEHEIGHT ;
 TYPE_1__ LoadDef ;
 int M_DrawSaveLoadBorder (int ,scalar_t__) ;
 int M_WriteText (int ,scalar_t__,int ) ;
 int PU_CACHE ;
 int V_DrawPatchDirect (int,int,int ,int ) ;
 int W_CacheLumpName (char*,int ) ;
 int load_end ;
 int * savegamestrings ;

void M_DrawLoad(void)
{
    int i;

    V_DrawPatchDirect (72,28,0,W_CacheLumpName("M_LOADG",PU_CACHE));
    for (i = 0;i < load_end; i++)
    {
 M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
 M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
    }
}
