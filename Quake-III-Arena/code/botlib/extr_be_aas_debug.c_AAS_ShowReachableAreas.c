
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int traveltype; } ;
typedef TYPE_1__ aas_reachability_t ;
struct TYPE_8__ {int numreachableareas; int firstreachablearea; } ;
typedef TYPE_2__ aas_areasettings_t ;
struct TYPE_10__ {int * reachability; TYPE_2__* areasettings; } ;
struct TYPE_9__ {int (* Print ) (int ,char*) ;} ;


 int AAS_PrintTravelType (int) ;
 int AAS_ShowReachability (TYPE_1__*) ;
 float AAS_Time () ;
 int Com_Memcpy (TYPE_1__*,int *,int) ;
 int PRT_MESSAGE ;
 int TRAVELTYPE_MASK ;
 TYPE_4__ aasworld ;
 TYPE_3__ botimport ;
 int stub1 (int ,char*) ;

void AAS_ShowReachableAreas(int areanum)
{
 aas_areasettings_t *settings;
 static aas_reachability_t reach;
 static int index, lastareanum;
 static float lasttime;

 if (areanum != lastareanum)
 {
  index = 0;
  lastareanum = areanum;
 }
 settings = &aasworld.areasettings[areanum];

 if (!settings->numreachableareas) return;

 if (index >= settings->numreachableareas) index = 0;

 if (AAS_Time() - lasttime > 1.5)
 {
  Com_Memcpy(&reach, &aasworld.reachability[settings->firstreachablearea + index], sizeof(aas_reachability_t));
  index++;
  lasttime = AAS_Time();
  AAS_PrintTravelType(reach.traveltype & TRAVELTYPE_MASK);
  botimport.Print(PRT_MESSAGE, "\n");
 }
 AAS_ShowReachability(&reach);
}
