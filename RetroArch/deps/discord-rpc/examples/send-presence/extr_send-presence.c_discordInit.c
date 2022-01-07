
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int handlers ;
struct TYPE_4__ {int joinRequest; int spectateGame; int joinGame; int errored; int disconnected; int ready; } ;
typedef TYPE_1__ DiscordEventHandlers ;


 int APPLICATION_ID ;
 int Discord_Initialize (int ,TYPE_1__*,int,int *) ;
 int handleDiscordDisconnected ;
 int handleDiscordError ;
 int handleDiscordJoin ;
 int handleDiscordJoinRequest ;
 int handleDiscordReady ;
 int handleDiscordSpectate ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void discordInit()
{
    DiscordEventHandlers handlers;
    memset(&handlers, 0, sizeof(handlers));
    handlers.ready = handleDiscordReady;
    handlers.disconnected = handleDiscordDisconnected;
    handlers.errored = handleDiscordError;
    handlers.joinGame = handleDiscordJoin;
    handlers.spectateGame = handleDiscordSpectate;
    handlers.joinRequest = handleDiscordJoinRequest;
    Discord_Initialize(APPLICATION_ID, &handlers, 1, ((void*)0));
}
