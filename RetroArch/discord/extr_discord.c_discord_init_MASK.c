#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  discord_app_id; } ;
struct TYPE_8__ {TYPE_1__ arrays; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  handlers ;
typedef  int /*<<< orphan*/  full_path ;
typedef  int /*<<< orphan*/  command ;
struct TYPE_9__ {int /*<<< orphan*/  joinRequest; int /*<<< orphan*/  spectateGame; int /*<<< orphan*/  joinGame; int /*<<< orphan*/  errored; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  ready; } ;
typedef  TYPE_3__ DiscordEventHandlers ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 TYPE_2__* FUNC4 () ; 
 int discord_ready ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  handle_discord_disconnected ; 
 int /*<<< orphan*/  handle_discord_error ; 
 int /*<<< orphan*/  handle_discord_join ; 
 int /*<<< orphan*/  handle_discord_join_request ; 
 int /*<<< orphan*/  handle_discord_ready ; 
 int /*<<< orphan*/  handle_discord_spectate ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(void)
{
   char full_path[PATH_MAX_LENGTH];
   char command[PATH_MAX_LENGTH];
   settings_t *settings = FUNC4();

   DiscordEventHandlers handlers;

   FUNC3("[discord] initializing ..\n");
   start_time            = FUNC11(0);

   FUNC6(&handlers, 0, sizeof(handlers));
   handlers.ready        = handle_discord_ready;
   handlers.disconnected = handle_discord_disconnected;
   handlers.errored      = handle_discord_error;
   handlers.joinGame     = handle_discord_join;
   handlers.spectateGame = handle_discord_spectate;
   handlers.joinRequest  = handle_discord_join_request;

   FUNC0(settings->arrays.discord_app_id, &handlers, 0, NULL);

#ifdef _WIN32
   GetModuleFileNameA(NULL, full_path, sizeof(full_path));
   if (strstr(get_retroarch_launch_arguments(), full_path))
      strlcpy(command, get_retroarch_launch_arguments(), sizeof(command));
   else
   {
      path_basedir(full_path);
      snprintf(command, sizeof(command), "%s%s",
            full_path, get_retroarch_launch_arguments());
   }
#else
   FUNC8(command, sizeof(command), "sh -c %s",
         FUNC5());
#endif
   FUNC3("[discord] registering startup command: %s\n", command);
   FUNC1(settings->arrays.discord_app_id, command);
   discord_ready = true;
}