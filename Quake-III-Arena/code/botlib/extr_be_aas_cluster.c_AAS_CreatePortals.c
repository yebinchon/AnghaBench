
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int areanum; scalar_t__ backcluster; scalar_t__ frontcluster; } ;
typedef TYPE_2__ aas_portal_t ;
struct TYPE_6__ {int numareas; size_t numportals; TYPE_2__* portals; TYPE_1__* areasettings; } ;
struct TYPE_4__ {int contents; } ;


 int AAS_Error (char*) ;
 size_t AAS_MAX_PORTALS ;
 int AREACONTENTS_CLUSTERPORTAL ;
 TYPE_3__ aasworld ;

void AAS_CreatePortals(void)
{
 int i;
 aas_portal_t *portal;

 for (i = 1; i < aasworld.numareas; i++)
 {

  if (aasworld.areasettings[i].contents & AREACONTENTS_CLUSTERPORTAL)
  {
   if (aasworld.numportals >= AAS_MAX_PORTALS)
   {
    AAS_Error("AAS_MAX_PORTALS");
    return;
   }
   portal = &aasworld.portals[aasworld.numportals];
   portal->areanum = i;
   portal->frontcluster = 0;
   portal->backcluster = 0;
   aasworld.numportals++;
  }
 }
}
