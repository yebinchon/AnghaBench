
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numareas; TYPE_1__* areasettings; } ;
struct TYPE_3__ {int contents; } ;


 int AREACONTENTS_CLUSTERPORTAL ;
 int AREACONTENTS_VIEWPORTAL ;
 TYPE_2__ aasworld ;

void AAS_SetViewPortalsAsClusterPortals(void)
{
 int i;

 for (i = 1; i < aasworld.numareas; i++)
 {
  if (aasworld.areasettings[i].contents & AREACONTENTS_VIEWPORTAL)
  {
   aasworld.areasettings[i].contents |= AREACONTENTS_CLUSTERPORTAL;
  }
 }
}
