
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BG ;
 int FG ;
 int ST_FX ;
 int ST_HEIGHT ;
 int ST_WIDTH ;
 int ST_X ;
 int ST_Y ;
 int V_CopyRect (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int V_DrawPatch (int ,int ,int ,int ) ;
 int faceback ;
 scalar_t__ netgame ;
 int sbar ;
 scalar_t__ st_statusbaron ;

void ST_refreshBackground(void)
{

    if (st_statusbaron)
    {
 V_DrawPatch(ST_X, 0, BG, sbar);

 if (netgame)
     V_DrawPatch(ST_FX, 0, BG, faceback);

 V_CopyRect(ST_X, 0, BG, ST_WIDTH, ST_HEIGHT, ST_X, ST_Y, FG);
    }

}
