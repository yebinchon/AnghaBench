
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int epsd; int last; int next; int pnum; int maxkills; int maxitems; int maxsecret; int plyr; } ;
typedef TYPE_1__ wbstartstruct_t ;


 int MAXPLAYERS ;
 int RNGCHECK (int,int ,int) ;
 scalar_t__ acceleratestage ;
 scalar_t__ bcnt ;
 scalar_t__ cnt ;
 scalar_t__ commercial ;
 int firstrefresh ;
 scalar_t__ gamemode ;
 int me ;
 int plrs ;
 scalar_t__ retail ;
 TYPE_1__* wbs ;

void WI_initVariables(wbstartstruct_t* wbstartstruct)
{

    wbs = wbstartstruct;
    acceleratestage = 0;
    cnt = bcnt = 0;
    firstrefresh = 1;
    me = wbs->pnum;
    plrs = wbs->plyr;

    if (!wbs->maxkills)
 wbs->maxkills = 1;

    if (!wbs->maxitems)
 wbs->maxitems = 1;

    if (!wbs->maxsecret)
 wbs->maxsecret = 1;

    if ( gamemode != retail )
      if (wbs->epsd > 2)
 wbs->epsd -= 3;
}
