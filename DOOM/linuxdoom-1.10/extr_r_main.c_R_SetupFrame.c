
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fixedcolormap; int viewz; int extralight; TYPE_1__* mo; } ;
typedef TYPE_2__ player_t ;
typedef int lighttable_t ;
struct TYPE_5__ {size_t angle; int y; int x; } ;


 size_t ANGLETOFINESHIFT ;
 int MAXLIGHTSCALE ;
 scalar_t__ colormaps ;
 int extralight ;
 int * finecosine ;
 int * finesine ;
 scalar_t__ fixedcolormap ;
 int framecount ;
 scalar_t__* scalelightfixed ;
 scalar_t__ sscount ;
 int validcount ;
 size_t viewangle ;
 size_t viewangleoffset ;
 int viewcos ;
 TYPE_2__* viewplayer ;
 int viewsin ;
 int viewx ;
 int viewy ;
 int viewz ;
 scalar_t__* walllights ;

void R_SetupFrame (player_t* player)
{
    int i;

    viewplayer = player;
    viewx = player->mo->x;
    viewy = player->mo->y;
    viewangle = player->mo->angle + viewangleoffset;
    extralight = player->extralight;

    viewz = player->viewz;

    viewsin = finesine[viewangle>>ANGLETOFINESHIFT];
    viewcos = finecosine[viewangle>>ANGLETOFINESHIFT];

    sscount = 0;

    if (player->fixedcolormap)
    {
 fixedcolormap =
     colormaps
     + player->fixedcolormap*256*sizeof(lighttable_t);

 walllights = scalelightfixed;

 for (i=0 ; i<MAXLIGHTSCALE ; i++)
     scalelightfixed[i] = fixedcolormap;
    }
    else
 fixedcolormap = 0;

    framecount++;
    validcount++;
}
