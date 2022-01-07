
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int portalflood; int portalvis; } ;


 int numportals ;
 TYPE_1__* portals ;
 int stat_done ;

void CalcFastVis(void)
{
 int i;


 for (i=0 ; i<numportals*2 ; i++)
 {
  portals[i].portalvis = portals[i].portalflood;
  portals[i].status = stat_done;
 }
}
