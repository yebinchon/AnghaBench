
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ pm_type; } ;
struct TYPE_5__ {scalar_t__ client; TYPE_1__ cur_ps; } ;
typedef TYPE_2__ bot_state_t ;


 scalar_t__ CS_PLAYERS ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 scalar_t__ PM_SPECTATOR ;
 scalar_t__ TEAM_SPECTATOR ;
 scalar_t__ atoi (int ) ;
 int qfalse ;
 int qtrue ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

qboolean BotIsObserver(bot_state_t *bs) {
 char buf[MAX_INFO_STRING];
 if (bs->cur_ps.pm_type == PM_SPECTATOR) return qtrue;
 trap_GetConfigstring(CS_PLAYERS+bs->client, buf, sizeof(buf));
 if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) return qtrue;
 return qfalse;
}
