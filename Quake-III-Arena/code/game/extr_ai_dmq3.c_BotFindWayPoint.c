
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ bot_waypoint_t ;


 int Q_stricmp (int ,char*) ;

bot_waypoint_t *BotFindWayPoint(bot_waypoint_t *waypoints, char *name) {
 bot_waypoint_t *wp;

 for (wp = waypoints; wp; wp = wp->next) {
  if (!Q_stricmp(wp->name, name)) return wp;
 }
 return ((void*)0);
}
