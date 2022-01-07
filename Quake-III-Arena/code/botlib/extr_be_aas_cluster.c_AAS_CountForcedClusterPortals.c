
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int numareas; TYPE_1__* areasettings; } ;
struct TYPE_5__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_4__ {int contents; } ;


 int AREACONTENTS_CLUSTERPORTAL ;
 int Log_Write (char*,int) ;
 int PRT_MESSAGE ;
 TYPE_3__ aasworld ;
 TYPE_2__ botimport ;
 int stub1 (int ,char*,int) ;

void AAS_CountForcedClusterPortals(void)
{
 int num, i;

 num = 0;
 for (i = 1; i < aasworld.numareas; i++)
 {
  if (aasworld.areasettings[i].contents & AREACONTENTS_CLUSTERPORTAL)
  {
   Log_Write("area %d is a forced portal area\r\n", i);
   num++;
  }
 }
 botimport.Print(PRT_MESSAGE, "%6d forced portal areas\n", num);
}
