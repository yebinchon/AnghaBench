
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tag; int lightlevel; int linecount; TYPE_2__** lines; } ;
typedef TYPE_1__ sector_t ;
struct TYPE_9__ {scalar_t__ tag; } ;
typedef TYPE_2__ line_t ;


 TYPE_1__* getNextSector (TYPE_2__*,TYPE_1__*) ;
 int numsectors ;
 TYPE_1__* sectors ;

void EV_TurnTagLightsOff(line_t* line)
{
    int i;
    int j;
    int min;
    sector_t* sector;
    sector_t* tsec;
    line_t* templine;

    sector = sectors;

    for (j = 0;j < numsectors; j++, sector++)
    {
 if (sector->tag == line->tag)
 {
     min = sector->lightlevel;
     for (i = 0;i < sector->linecount; i++)
     {
  templine = sector->lines[i];
  tsec = getNextSector(templine,sector);
  if (!tsec)
      continue;
  if (tsec->lightlevel < min)
      min = tsec->lightlevel;
     }
     sector->lightlevel = min;
 }
    }
}
