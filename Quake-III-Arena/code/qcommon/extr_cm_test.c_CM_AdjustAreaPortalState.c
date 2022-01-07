
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_2__ {int numAreas; scalar_t__* areaPortals; } ;


 int CM_FloodAreaConnections () ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 TYPE_1__ cm ;

void CM_AdjustAreaPortalState( int area1, int area2, qboolean open ) {
 if ( area1 < 0 || area2 < 0 ) {
  return;
 }

 if ( area1 >= cm.numAreas || area2 >= cm.numAreas ) {
  Com_Error (ERR_DROP, "CM_ChangeAreaPortalState: bad area number");
 }

 if ( open ) {
  cm.areaPortals[ area1 * cm.numAreas + area2 ]++;
  cm.areaPortals[ area2 * cm.numAreas + area1 ]++;
 } else {
  cm.areaPortals[ area1 * cm.numAreas + area2 ]--;
  cm.areaPortals[ area2 * cm.numAreas + area1 ]--;
  if ( cm.areaPortals[ area2 * cm.numAreas + area1 ] < 0 ) {
   Com_Error (ERR_DROP, "CM_AdjustAreaPortalState: negative reference count");
  }
 }

 CM_FloodAreaConnections ();
}
