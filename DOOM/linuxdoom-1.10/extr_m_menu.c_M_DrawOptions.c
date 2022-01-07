
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; } ;


 int LINEHEIGHT ;
 int M_DrawThermo (int,int,int,int ) ;
 TYPE_1__ OptionsDef ;
 int PU_CACHE ;
 int V_DrawPatchDirect (int,int,int ,int ) ;
 int W_CacheLumpName (char*,int ) ;
 int detail ;
 size_t detailLevel ;
 char** detailNames ;
 int messages ;
 int mouseSensitivity ;
 int mousesens ;
 char** msgNames ;
 int screenSize ;
 int scrnsize ;
 size_t showMessages ;

void M_DrawOptions(void)
{
    V_DrawPatchDirect (108,15,0,W_CacheLumpName("M_OPTTTL",PU_CACHE));

    V_DrawPatchDirect (OptionsDef.x + 175,OptionsDef.y+LINEHEIGHT*detail,0,
         W_CacheLumpName(detailNames[detailLevel],PU_CACHE));

    V_DrawPatchDirect (OptionsDef.x + 120,OptionsDef.y+LINEHEIGHT*messages,0,
         W_CacheLumpName(msgNames[showMessages],PU_CACHE));

    M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(mousesens+1),
   10,mouseSensitivity);

    M_DrawThermo(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(scrnsize+1),
   9,screenSize);
}
