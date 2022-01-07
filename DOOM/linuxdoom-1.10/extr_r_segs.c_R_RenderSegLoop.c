
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int fixed_t ;
typedef size_t angle_t ;
struct TYPE_4__ {int* top; int* bottom; } ;
struct TYPE_3__ {int* top; int* bottom; } ;


 size_t ANGLETOFINESHIFT ;
 int FRACBITS ;
 int FixedMul (int ,int ) ;
 int HEIGHTBITS ;
 int HEIGHTUNIT ;
 unsigned int LIGHTSCALESHIFT ;
 unsigned int MAXLIGHTSCALE ;
 int R_GetColumn (scalar_t__,int) ;
 int bottomfrac ;
 scalar_t__ bottomstep ;
 scalar_t__ bottomtexture ;
 int* ceilingclip ;
 TYPE_2__* ceilingplane ;
 int colfunc () ;
 int dc_colormap ;
 int dc_iscale ;
 int dc_source ;
 int dc_texturemid ;
 size_t dc_x ;
 int dc_yh ;
 int dc_yl ;
 int * finetangent ;
 int* floorclip ;
 TYPE_1__* floorplane ;
 scalar_t__ markceiling ;
 scalar_t__ markfloor ;
 scalar_t__ maskedtexture ;
 int* maskedtexturecol ;
 scalar_t__ midtexture ;
 int pixhigh ;
 scalar_t__ pixhighstep ;
 int pixlow ;
 scalar_t__ pixlowstep ;
 int rw_bottomtexturemid ;
 size_t rw_centerangle ;
 int rw_distance ;
 int rw_midtexturemid ;
 int rw_offset ;
 unsigned int rw_scale ;
 scalar_t__ rw_scalestep ;
 size_t rw_stopx ;
 int rw_toptexturemid ;
 size_t rw_x ;
 scalar_t__ segtextured ;
 int topfrac ;
 scalar_t__ topstep ;
 scalar_t__ toptexture ;
 int viewheight ;
 int * walllights ;
 size_t* xtoviewangle ;

void R_RenderSegLoop (void)
{
    angle_t angle;
    unsigned index;
    int yl;
    int yh;
    int mid;
    fixed_t texturecolumn;
    int top;
    int bottom;



    for ( ; rw_x < rw_stopx ; rw_x++)
    {

 yl = (topfrac+HEIGHTUNIT-1)>>HEIGHTBITS;


 if (yl < ceilingclip[rw_x]+1)
     yl = ceilingclip[rw_x]+1;

 if (markceiling)
 {
     top = ceilingclip[rw_x]+1;
     bottom = yl-1;

     if (bottom >= floorclip[rw_x])
  bottom = floorclip[rw_x]-1;

     if (top <= bottom)
     {
  ceilingplane->top[rw_x] = top;
  ceilingplane->bottom[rw_x] = bottom;
     }
 }

 yh = bottomfrac>>HEIGHTBITS;

 if (yh >= floorclip[rw_x])
     yh = floorclip[rw_x]-1;

 if (markfloor)
 {
     top = yh+1;
     bottom = floorclip[rw_x]-1;
     if (top <= ceilingclip[rw_x])
  top = ceilingclip[rw_x]+1;
     if (top <= bottom)
     {
  floorplane->top[rw_x] = top;
  floorplane->bottom[rw_x] = bottom;
     }
 }


 if (segtextured)
 {

     angle = (rw_centerangle + xtoviewangle[rw_x])>>ANGLETOFINESHIFT;
     texturecolumn = rw_offset-FixedMul(finetangent[angle],rw_distance);
     texturecolumn >>= FRACBITS;

     index = rw_scale>>LIGHTSCALESHIFT;

     if (index >= MAXLIGHTSCALE )
  index = MAXLIGHTSCALE-1;

     dc_colormap = walllights[index];
     dc_x = rw_x;
     dc_iscale = 0xffffffffu / (unsigned)rw_scale;
 }


 if (midtexture)
 {

     dc_yl = yl;
     dc_yh = yh;
     dc_texturemid = rw_midtexturemid;
     dc_source = R_GetColumn(midtexture,texturecolumn);
     colfunc ();
     ceilingclip[rw_x] = viewheight;
     floorclip[rw_x] = -1;
 }
 else
 {

     if (toptexture)
     {

  mid = pixhigh>>HEIGHTBITS;
  pixhigh += pixhighstep;

  if (mid >= floorclip[rw_x])
      mid = floorclip[rw_x]-1;

  if (mid >= yl)
  {
      dc_yl = yl;
      dc_yh = mid;
      dc_texturemid = rw_toptexturemid;
      dc_source = R_GetColumn(toptexture,texturecolumn);
      colfunc ();
      ceilingclip[rw_x] = mid;
  }
  else
      ceilingclip[rw_x] = yl-1;
     }
     else
     {

  if (markceiling)
      ceilingclip[rw_x] = yl-1;
     }

     if (bottomtexture)
     {

  mid = (pixlow+HEIGHTUNIT-1)>>HEIGHTBITS;
  pixlow += pixlowstep;


  if (mid <= ceilingclip[rw_x])
      mid = ceilingclip[rw_x]+1;

  if (mid <= yh)
  {
      dc_yl = mid;
      dc_yh = yh;
      dc_texturemid = rw_bottomtexturemid;
      dc_source = R_GetColumn(bottomtexture,
         texturecolumn);
      colfunc ();
      floorclip[rw_x] = mid;
  }
  else
      floorclip[rw_x] = yh+1;
     }
     else
     {

  if (markfloor)
      floorclip[rw_x] = yh+1;
     }

     if (maskedtexture)
     {


  maskedtexturecol[rw_x] = texturecolumn;
     }
 }

 rw_scale += rw_scalestep;
 topfrac += topstep;
 bottomfrac += bottomstep;
    }
}
