
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int minx; int maxx; int* top; int lightlevel; int picnum; int height; } ;
typedef TYPE_1__ visplane_t ;
struct TYPE_6__ {int lightlevel; int picnum; int height; } ;


 TYPE_2__* lastvisplane ;
 int memset (int*,int,int) ;

visplane_t*
R_CheckPlane
( visplane_t* pl,
  int start,
  int stop )
{
    int intrl;
    int intrh;
    int unionl;
    int unionh;
    int x;

    if (start < pl->minx)
    {
 intrl = pl->minx;
 unionl = start;
    }
    else
    {
 unionl = pl->minx;
 intrl = start;
    }

    if (stop > pl->maxx)
    {
 intrh = pl->maxx;
 unionh = stop;
    }
    else
    {
 unionh = pl->maxx;
 intrh = stop;
    }

    for (x=intrl ; x<= intrh ; x++)
 if (pl->top[x] != 0xff)
     break;

    if (x > intrh)
    {
 pl->minx = unionl;
 pl->maxx = unionh;


 return pl;
    }


    lastvisplane->height = pl->height;
    lastvisplane->picnum = pl->picnum;
    lastvisplane->lightlevel = pl->lightlevel;

    pl = lastvisplane++;
    pl->minx = start;
    pl->maxx = stop;

    memset (pl->top,0xff,sizeof(pl->top));

    return pl;
}
