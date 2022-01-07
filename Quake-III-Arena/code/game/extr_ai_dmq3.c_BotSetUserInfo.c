
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int userinfo ;
struct TYPE_3__ {int client; } ;
typedef TYPE_1__ bot_state_t ;


 int ClientUserinfoChanged (int ) ;
 int Info_SetValueForKey (char*,char*,char*) ;
 int MAX_INFO_STRING ;
 int trap_GetUserinfo (int ,char*,int) ;
 int trap_SetUserinfo (int ,char*) ;

void BotSetUserInfo(bot_state_t *bs, char *key, char *value) {
 char userinfo[MAX_INFO_STRING];

 trap_GetUserinfo(bs->client, userinfo, sizeof(userinfo));
 Info_SetValueForKey(userinfo, key, value);
 trap_SetUserinfo(bs->client, userinfo);
 ClientUserinfoChanged( bs->client );
}
