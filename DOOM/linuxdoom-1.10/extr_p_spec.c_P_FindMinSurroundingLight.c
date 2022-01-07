
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int linecount; int lightlevel; int ** lines; } ;
typedef TYPE_1__ sector_t ;
typedef int line_t ;


 TYPE_1__* getNextSector (int *,TYPE_1__*) ;

int
P_FindMinSurroundingLight
( sector_t* sector,
  int max )
{
    int i;
    int min;
    line_t* line;
    sector_t* check;

    min = max;
    for (i=0 ; i < sector->linecount ; i++)
    {
 line = sector->lines[i];
 check = getNextSector(line,sector);

 if (!check)
     continue;

 if (check->lightlevel < min)
     min = check->lightlevel;
    }
    return min;
}
