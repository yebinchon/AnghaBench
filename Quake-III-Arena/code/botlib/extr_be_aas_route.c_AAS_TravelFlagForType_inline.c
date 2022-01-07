
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* travelflagfortype; } ;


 int MAX_TRAVELTYPES ;
 int TFL_INVALID ;
 int TFL_NOTTEAM1 ;
 int TFL_NOTTEAM2 ;
 int TRAVELFLAG_NOTTEAM1 ;
 int TRAVELFLAG_NOTTEAM2 ;
 int TRAVELTYPE_MASK ;
 TYPE_1__ aasworld ;

__inline int AAS_TravelFlagForType_inline(int traveltype)
{
 int tfl;

 tfl = 0;
 if (tfl & TRAVELFLAG_NOTTEAM1)
  tfl |= TFL_NOTTEAM1;
 if (tfl & TRAVELFLAG_NOTTEAM2)
  tfl |= TFL_NOTTEAM2;
 traveltype &= TRAVELTYPE_MASK;
 if (traveltype < 0 || traveltype >= MAX_TRAVELTYPES)
  return TFL_INVALID;
 tfl |= aasworld.travelflagfortype[traveltype];
 return tfl;
}
