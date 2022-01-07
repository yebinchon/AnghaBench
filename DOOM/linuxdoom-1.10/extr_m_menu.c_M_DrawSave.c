
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;


 int LINEHEIGHT ;
 TYPE_1__ LoadDef ;
 int M_DrawSaveLoadBorder (scalar_t__,scalar_t__) ;
 int M_StringWidth (char*) ;
 int M_WriteText (scalar_t__,scalar_t__,char*) ;
 int PU_CACHE ;
 int V_DrawPatchDirect (int,int,int ,int ) ;
 int W_CacheLumpName (char*,int ) ;
 int load_end ;
 size_t saveSlot ;
 scalar_t__ saveStringEnter ;
 char** savegamestrings ;

void M_DrawSave(void)
{
    int i;

    V_DrawPatchDirect (72,28,0,W_CacheLumpName("M_SAVEG",PU_CACHE));
    for (i = 0;i < load_end; i++)
    {
 M_DrawSaveLoadBorder(LoadDef.x,LoadDef.y+LINEHEIGHT*i);
 M_WriteText(LoadDef.x,LoadDef.y+LINEHEIGHT*i,savegamestrings[i]);
    }

    if (saveStringEnter)
    {
 i = M_StringWidth(savegamestrings[saveSlot]);
 M_WriteText(LoadDef.x + i,LoadDef.y+LINEHEIGHT*saveSlot,"_");
    }
}
