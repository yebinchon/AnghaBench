
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int discord_app_id; } ;
struct TYPE_8__ {TYPE_1__ arrays; } ;
typedef TYPE_2__ settings_t ;
typedef int handlers ;
typedef int full_path ;
typedef int command ;
struct TYPE_9__ {int joinRequest; int spectateGame; int joinGame; int errored; int disconnected; int ready; } ;
typedef TYPE_3__ DiscordEventHandlers ;


 int Discord_Initialize (int ,TYPE_3__*,int ,int *) ;
 int Discord_Register (int ,char*) ;
 int GetModuleFileNameA (int *,char*,int) ;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,...) ;
 TYPE_2__* config_get_ptr () ;
 int discord_ready ;
 char* get_retroarch_launch_arguments () ;
 int handle_discord_disconnected ;
 int handle_discord_error ;
 int handle_discord_join ;
 int handle_discord_join_request ;
 int handle_discord_ready ;
 int handle_discord_spectate ;
 int memset (TYPE_3__*,int ,int) ;
 int path_basedir (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int start_time ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strstr (char*,char*) ;
 int time (int ) ;

void discord_init(void)
{
   char full_path[PATH_MAX_LENGTH];
   char command[PATH_MAX_LENGTH];
   settings_t *settings = config_get_ptr();

   DiscordEventHandlers handlers;

   RARCH_LOG("[discord] initializing ..\n");
   start_time = time(0);

   memset(&handlers, 0, sizeof(handlers));
   handlers.ready = handle_discord_ready;
   handlers.disconnected = handle_discord_disconnected;
   handlers.errored = handle_discord_error;
   handlers.joinGame = handle_discord_join;
   handlers.spectateGame = handle_discord_spectate;
   handlers.joinRequest = handle_discord_join_request;

   Discord_Initialize(settings->arrays.discord_app_id, &handlers, 0, ((void*)0));
   snprintf(command, sizeof(command), "sh -c %s",
         get_retroarch_launch_arguments());

   RARCH_LOG("[discord] registering startup command: %s\n", command);
   Discord_Register(settings->arrays.discord_app_id, command);
   discord_ready = 1;
}
