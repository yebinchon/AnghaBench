
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int x1; int x2; scalar_t__ scale; scalar_t__ gz; scalar_t__ gzt; int gy; int gx; } ;
typedef TYPE_1__ vissprite_t ;
typedef scalar_t__ fixed_t ;
struct TYPE_9__ {int x1; int x2; int silhouette; scalar_t__ scale1; scalar_t__ scale2; scalar_t__ bsilheight; scalar_t__ tsilheight; short* sprbottomclip; short* sprtopclip; scalar_t__ maskedtexturecol; int curline; } ;
typedef TYPE_2__ drawseg_t ;


 int R_DrawVisSprite (TYPE_1__*,int,int) ;
 int R_PointOnSegSide (int ,int ,int ) ;
 int R_RenderMaskedSegRange (TYPE_2__*,int,int) ;
 int SCREENWIDTH ;
 int SIL_BOTTOM ;
 int SIL_TOP ;
 TYPE_2__* drawsegs ;
 TYPE_2__* ds_p ;
 short* mceilingclip ;
 short* mfloorclip ;
 short viewheight ;

void R_DrawSprite (vissprite_t* spr)
{
    drawseg_t* ds;
    short clipbot[SCREENWIDTH];
    short cliptop[SCREENWIDTH];
    int x;
    int r1;
    int r2;
    fixed_t scale;
    fixed_t lowscale;
    int silhouette;

    for (x = spr->x1 ; x<=spr->x2 ; x++)
 clipbot[x] = cliptop[x] = -2;




    for (ds=ds_p-1 ; ds >= drawsegs ; ds--)
    {

 if (ds->x1 > spr->x2
     || ds->x2 < spr->x1
     || (!ds->silhouette
  && !ds->maskedtexturecol) )
 {

     continue;
 }

 r1 = ds->x1 < spr->x1 ? spr->x1 : ds->x1;
 r2 = ds->x2 > spr->x2 ? spr->x2 : ds->x2;

 if (ds->scale1 > ds->scale2)
 {
     lowscale = ds->scale2;
     scale = ds->scale1;
 }
 else
 {
     lowscale = ds->scale1;
     scale = ds->scale2;
 }

 if (scale < spr->scale
     || ( lowscale < spr->scale
   && !R_PointOnSegSide (spr->gx, spr->gy, ds->curline) ) )
 {

     if (ds->maskedtexturecol)
  R_RenderMaskedSegRange (ds, r1, r2);

     continue;
 }



 silhouette = ds->silhouette;

 if (spr->gz >= ds->bsilheight)
     silhouette &= ~SIL_BOTTOM;

 if (spr->gzt <= ds->tsilheight)
     silhouette &= ~SIL_TOP;

 if (silhouette == 1)
 {

     for (x=r1 ; x<=r2 ; x++)
  if (clipbot[x] == -2)
      clipbot[x] = ds->sprbottomclip[x];
 }
 else if (silhouette == 2)
 {

     for (x=r1 ; x<=r2 ; x++)
  if (cliptop[x] == -2)
      cliptop[x] = ds->sprtopclip[x];
 }
 else if (silhouette == 3)
 {

     for (x=r1 ; x<=r2 ; x++)
     {
  if (clipbot[x] == -2)
      clipbot[x] = ds->sprbottomclip[x];
  if (cliptop[x] == -2)
      cliptop[x] = ds->sprtopclip[x];
     }
 }

    }




    for (x = spr->x1 ; x<=spr->x2 ; x++)
    {
 if (clipbot[x] == -2)
     clipbot[x] = viewheight;

 if (cliptop[x] == -2)
     cliptop[x] = -1;
    }

    mfloorclip = clipbot;
    mceilingclip = cliptop;
    R_DrawVisSprite (spr, spr->x1, spr->x2);
}
