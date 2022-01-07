
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ floodvalid; } ;
typedef TYPE_1__ cArea_t ;
struct TYPE_4__ {scalar_t__ floodvalid; int numAreas; TYPE_1__* areas; } ;


 int CM_FloodArea_r (int,int) ;
 TYPE_2__ cm ;

void CM_FloodAreaConnections( void ) {
 int i;
 cArea_t *area;
 int floodnum;


 cm.floodvalid++;
 floodnum = 0;

 for (i = 0 ; i < cm.numAreas ; i++) {
  area = &cm.areas[i];
  if (area->floodvalid == cm.floodvalid) {
   continue;
  }
  floodnum++;
  CM_FloodArea_r (i, floodnum);
 }

}
