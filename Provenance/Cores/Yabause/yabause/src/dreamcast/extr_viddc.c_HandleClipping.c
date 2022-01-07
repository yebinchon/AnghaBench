
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ x; int cellw; scalar_t__ y; scalar_t__ cellh; } ;
typedef TYPE_1__ vdp2draw_struct ;
struct TYPE_6__ {scalar_t__ pixeloffset; scalar_t__ lineincrement; scalar_t__ xstart; scalar_t__ xend; int ystart; scalar_t__ yend; } ;
typedef TYPE_2__ clipping_struct ;


 scalar_t__ vdp2height ;
 scalar_t__ vdp2width ;

__attribute__((used)) static void inline HandleClipping(vdp2draw_struct *info, clipping_struct *clip)
{
    clip->pixeloffset=0;
    clip->lineincrement=0;


    if (info->x < 0)
    {
        clip->xstart = 0;
        clip->xend = (info->x+info->cellw);
        clip->pixeloffset = 0 - info->x;
        clip->lineincrement = 0 - info->x;
    }
    else
    {
        clip->xstart = info->x;

        if ((info->x+info->cellw) > vdp2width)
        {
            clip->xend = vdp2width;
            clip->lineincrement = (info->x+info->cellw) - vdp2width;
        }
        else
            clip->xend = (info->x+info->cellw);
    }

    if (info->y < 0)
    {
        clip->ystart = 0;
        clip->yend = (info->y+info->cellh);
        clip->pixeloffset = (info->cellw * (0 - info->y)) + clip->pixeloffset;
    }
    else
    {
        clip->ystart = info->y;

        if ((info->y+info->cellh) >= vdp2height)
            clip->yend = vdp2height;
        else
            clip->yend = (info->y+info->cellh);
    }
}
