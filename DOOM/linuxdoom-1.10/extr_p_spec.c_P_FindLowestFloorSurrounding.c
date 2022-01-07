
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ floorheight; int linecount; int ** lines; } ;
typedef TYPE_1__ sector_t ;
typedef int line_t ;
typedef scalar_t__ fixed_t ;


 TYPE_1__* getNextSector (int *,TYPE_1__*) ;

fixed_t P_FindLowestFloorSurrounding(sector_t* sec)
{
    int i;
    line_t* check;
    sector_t* other;
    fixed_t floor = sec->floorheight;

    for (i=0 ;i < sec->linecount ; i++)
    {
 check = sec->lines[i];
 other = getNextSector(check,sec);

 if (!other)
     continue;

 if (other->floorheight < floor)
     floor = other->floorheight;
    }
    return floor;
}
