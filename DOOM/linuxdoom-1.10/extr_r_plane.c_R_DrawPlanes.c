
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int minx; int maxx; size_t picnum; scalar_t__* top; scalar_t__* bottom; int lightlevel; scalar_t__ height; } ;
typedef TYPE_1__ visplane_t ;


 int ANGLETOSKYSHIFT ;
 int I_Error (char*,scalar_t__) ;
 int LIGHTLEVELS ;
 int LIGHTSEGSHIFT ;
 scalar_t__ MAXDRAWSEGS ;
 scalar_t__ MAXOPENINGS ;
 int MAXVISPLANES ;
 int PU_CACHE ;
 int PU_STATIC ;
 int R_GetColumn (int ,int) ;
 int R_MakeSpans (int,int,scalar_t__,int,scalar_t__) ;
 int W_CacheLumpNum (scalar_t__,int ) ;
 int Z_ChangeTag (int ,int ) ;
 int abs (scalar_t__) ;
 int colfunc () ;
 int colormaps ;
 int dc_colormap ;
 int dc_iscale ;
 int dc_source ;
 int dc_texturemid ;
 int dc_x ;
 scalar_t__ dc_yh ;
 scalar_t__ dc_yl ;
 int detailshift ;
 scalar_t__ drawsegs ;
 scalar_t__ ds_p ;
 int ds_source ;
 int extralight ;
 scalar_t__ firstflat ;
 scalar_t__* flattranslation ;
 scalar_t__ lastopening ;
 TYPE_1__* lastvisplane ;
 scalar_t__ openings ;
 int planeheight ;
 int planezlight ;
 int pspriteiscale ;
 size_t skyflatnum ;
 int skytexture ;
 int skytexturemid ;
 int viewangle ;
 scalar_t__ viewz ;
 TYPE_1__* visplanes ;
 int* xtoviewangle ;
 int * zlight ;

void R_DrawPlanes (void)
{
    visplane_t* pl;
    int light;
    int x;
    int stop;
    int angle;
    for (pl = visplanes ; pl < lastvisplane ; pl++)
    {
 if (pl->minx > pl->maxx)
     continue;



 if (pl->picnum == skyflatnum)
 {
     dc_iscale = pspriteiscale>>detailshift;





     dc_colormap = colormaps;
     dc_texturemid = skytexturemid;
     for (x=pl->minx ; x <= pl->maxx ; x++)
     {
  dc_yl = pl->top[x];
  dc_yh = pl->bottom[x];

  if (dc_yl <= dc_yh)
  {
      angle = (viewangle + xtoviewangle[x])>>ANGLETOSKYSHIFT;
      dc_x = x;
      dc_source = R_GetColumn(skytexture, angle);
      colfunc ();
  }
     }
     continue;
 }


 ds_source = W_CacheLumpNum(firstflat +
       flattranslation[pl->picnum],
       PU_STATIC);

 planeheight = abs(pl->height-viewz);
 light = (pl->lightlevel >> LIGHTSEGSHIFT)+extralight;

 if (light >= LIGHTLEVELS)
     light = LIGHTLEVELS-1;

 if (light < 0)
     light = 0;

 planezlight = zlight[light];

 pl->top[pl->maxx+1] = 0xff;
 pl->top[pl->minx-1] = 0xff;

 stop = pl->maxx + 1;

 for (x=pl->minx ; x<= stop ; x++)
 {
     R_MakeSpans(x,pl->top[x-1],
   pl->bottom[x-1],
   pl->top[x],
   pl->bottom[x]);
 }

 Z_ChangeTag (ds_source, PU_CACHE);
    }
}
