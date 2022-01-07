
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ height; int picnum; int lightlevel; int maxx; int top; int minx; } ;
typedef TYPE_1__ visplane_t ;
typedef scalar_t__ fixed_t ;


 int I_Error (char*) ;
 int MAXVISPLANES ;
 int SCREENWIDTH ;
 TYPE_1__* lastvisplane ;
 int memset (int ,int,int) ;
 int skyflatnum ;
 TYPE_1__* visplanes ;

visplane_t*
R_FindPlane
( fixed_t height,
  int picnum,
  int lightlevel )
{
    visplane_t* check;

    if (picnum == skyflatnum)
    {
 height = 0;
 lightlevel = 0;
    }

    for (check=visplanes; check<lastvisplane; check++)
    {
 if (height == check->height
     && picnum == check->picnum
     && lightlevel == check->lightlevel)
 {
     break;
 }
    }


    if (check < lastvisplane)
 return check;

    if (lastvisplane - visplanes == MAXVISPLANES)
 I_Error ("R_FindPlane: no more visplanes");

    lastvisplane++;

    check->height = height;
    check->picnum = picnum;
    check->lightlevel = lightlevel;
    check->minx = SCREENWIDTH;
    check->maxx = -1;

    memset (check->top,0xff,sizeof(check->top));

    return check;
}
