
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ specialdata; } ;
typedef TYPE_1__ sector_t ;
typedef int line_t ;


 int P_FindSectorFromLineTag (int *,int) ;
 int P_SpawnStrobeFlash (TYPE_1__*,int ,int ) ;
 int SLOWDARK ;
 TYPE_1__* sectors ;

void EV_StartLightStrobing(line_t* line)
{
    int secnum;
    sector_t* sec;

    secnum = -1;
    while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
    {
 sec = &sectors[secnum];
 if (sec->specialdata)
     continue;

 P_SpawnStrobeFlash (sec,SLOWDARK, 0);
    }
}
