
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int waterlevel; } ;
struct TYPE_3__ {int previous_waterlevel; } ;


 int EV_WATER_CLEAR ;
 int EV_WATER_LEAVE ;
 int EV_WATER_TOUCH ;
 int EV_WATER_UNDER ;
 int PM_AddEvent (int ) ;
 TYPE_2__* pm ;
 TYPE_1__ pml ;

__attribute__((used)) static void PM_WaterEvents( void ) {



 if (!pml.previous_waterlevel && pm->waterlevel) {
  PM_AddEvent( EV_WATER_TOUCH );
 }




 if (pml.previous_waterlevel && !pm->waterlevel) {
  PM_AddEvent( EV_WATER_LEAVE );
 }




 if (pml.previous_waterlevel != 3 && pm->waterlevel == 3) {
  PM_AddEvent( EV_WATER_UNDER );
 }




 if (pml.previous_waterlevel == 3 && pm->waterlevel != 3) {
  PM_AddEvent( EV_WATER_CLEAR );
 }
}
