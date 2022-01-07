
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numtouch; int* touchents; } ;


 int ENTITYNUM_WORLD ;
 int MAXTOUCH ;
 TYPE_1__* pm ;

void PM_AddTouchEnt( int entityNum ) {
 int i;

 if ( entityNum == ENTITYNUM_WORLD ) {
  return;
 }
 if ( pm->numtouch == MAXTOUCH ) {
  return;
 }


 for ( i = 0 ; i < pm->numtouch ; i++ ) {
  if ( pm->touchents[ i ] == entityNum ) {
   return;
  }
 }


 pm->touchents[pm->numtouch] = entityNum;
 pm->numtouch++;
}
