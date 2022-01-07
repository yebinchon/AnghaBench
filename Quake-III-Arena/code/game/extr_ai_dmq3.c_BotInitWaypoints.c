
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;


 int MAX_WAYPOINTS ;
 TYPE_1__* botai_freewaypoints ;
 TYPE_1__* botai_waypoints ;

void BotInitWaypoints(void) {
 int i;

 botai_freewaypoints = ((void*)0);
 for (i = 0; i < MAX_WAYPOINTS; i++) {
  botai_waypoints[i].next = botai_freewaypoints;
  botai_freewaypoints = &botai_waypoints[i];
 }
}
