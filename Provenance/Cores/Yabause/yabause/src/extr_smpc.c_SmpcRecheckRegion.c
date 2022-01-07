
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ regionsetting; int regionid; } ;


 int Cs2GetIP (int ) ;
 int Cs2GetRegionID () ;
 scalar_t__ REGION_AUTODETECT ;
 TYPE_1__* SmpcInternalVars ;

void SmpcRecheckRegion(void) {
   if (SmpcInternalVars == ((void*)0))
      return;

   if (SmpcInternalVars->regionsetting == REGION_AUTODETECT)
   {

      SmpcInternalVars->regionid = Cs2GetRegionID();



      if (SmpcInternalVars->regionid == 0)
         SmpcInternalVars->regionid = 1;
   }
   else
      Cs2GetIP(0);
}
