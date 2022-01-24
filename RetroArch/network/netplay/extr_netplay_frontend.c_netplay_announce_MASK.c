#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct retro_system_info {char* library_name; char* library_version; } ;
struct TYPE_12__ {int netplay_use_mitm_server; } ;
struct TYPE_11__ {char* username; scalar_t__* netplay_spectate_password; scalar_t__* netplay_password; } ;
struct TYPE_10__ {char* netplay_mitm_server; } ;
struct TYPE_9__ {int netplay_port; } ;
struct TYPE_13__ {TYPE_5__ bools; TYPE_4__ paths; TYPE_3__ arrays; TYPE_2__ uints; } ;
typedef  TYPE_6__ settings_t ;
typedef  int /*<<< orphan*/  frontend_architecture ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {char* data; } ;

/* Variables and functions */
 char* PACKAGE_VERSION ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  RARCH_PATH_BASENAME ; 
 int /*<<< orphan*/  RARCH_PATH_SUBSYSTEM ; 
 TYPE_6__* FUNC1 () ; 
 int FUNC2 () ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  netplay_announce_cb ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 struct string_list* FUNC10 () ; 
 struct retro_system_info* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,char*,char*,char*,int,int,char*,int,int,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(void)
{
   char buf[4600];
   char frontend_architecture[PATH_MAX_LENGTH];
   char url[2048]                   = "http://lobby.libretro.com/add/";
   char *username                   = NULL;
   char *corename                   = NULL;
   char *gamename                   = NULL;
   char *subsystemname              = NULL;
   char *coreversion                = NULL;
   char *frontend_ident             = NULL;
   settings_t *settings             = FUNC1();
   struct retro_system_info *system = FUNC11();
   uint32_t content_crc             = FUNC2();
   struct string_list *subsystem    = FUNC10();

   buf[0] = '\0';

   if (subsystem)
   {
      unsigned i;

      for (i = 0; i < subsystem->size; i++)
      {
         FUNC14(buf, FUNC8(subsystem->elems[i].data), sizeof(buf));
         if (i < subsystem->size - 1)
            FUNC14(buf, "|", sizeof(buf));
      }
      FUNC6(&gamename, buf);
      FUNC6(&subsystemname, FUNC9(RARCH_PATH_SUBSYSTEM));
      content_crc = 0;
   }
   else
   {
      FUNC6(&gamename,
         !FUNC13(FUNC8(FUNC9(RARCH_PATH_BASENAME))) ?
         FUNC8(FUNC9(RARCH_PATH_BASENAME)) : "N/A");
      FUNC6(&subsystemname, "N/A");
   }

   FUNC7(frontend_architecture, sizeof(frontend_architecture));

#ifdef HAVE_DISCORD
   if(discord_is_ready())
      net_http_urlencode(&username, discord_get_own_username());
   else
#endif
   FUNC6(&username, settings->paths.username);
   FUNC6(&corename, system->library_name);
   FUNC6(&coreversion, system->library_version);
   FUNC6(&frontend_ident, frontend_architecture);

   buf[0] = '\0';

   FUNC12(buf, sizeof(buf), "username=%s&core_name=%s&core_version=%s&"
      "game_name=%s&game_crc=%08X&port=%d&mitm_server=%s"
      "&has_password=%d&has_spectate_password=%d&force_mitm=%d"
      "&retroarch_version=%s&frontend=%s&subsystem_name=%s",
      username, corename, coreversion, gamename, content_crc,
      settings->uints.netplay_port,
      settings->arrays.netplay_mitm_server,
      *settings->paths.netplay_password ? 1 : 0,
      *settings->paths.netplay_spectate_password ? 1 : 0,
      settings->bools.netplay_use_mitm_server,
      PACKAGE_VERSION, frontend_architecture, subsystemname);
#if 0
   RARCH_LOG("[netplay] announcement URL: %s\n", buf);
#endif
   FUNC15(url, buf, true, NULL, netplay_announce_cb, NULL);

   if (username)
      FUNC5(username);
   if (corename)
      FUNC5(corename);
   if (gamename)
      FUNC5(gamename);
   if (coreversion)
      FUNC5(coreversion);
   if (frontend_ident)
      FUNC5(frontend_ident);
}