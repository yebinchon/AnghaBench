#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct netplay_room {int has_password; int has_spectate_password; int fixed; int /*<<< orphan*/  host_method; int /*<<< orphan*/  country; int /*<<< orphan*/  retroarch_version; int /*<<< orphan*/  gamecrc; int /*<<< orphan*/  gamename; int /*<<< orphan*/  coreversion; int /*<<< orphan*/  frontend; int /*<<< orphan*/  corename; int /*<<< orphan*/  mitm_port; int /*<<< orphan*/  port; int /*<<< orphan*/  mitm_address; int /*<<< orphan*/  address; int /*<<< orphan*/  nickname; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  retro_task_t ;
struct TYPE_4__ {scalar_t__ len; char* data; } ;
typedef  TYPE_2__ http_transfer_data_t ;
typedef  void discord_userdata_t ;
struct TYPE_3__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_DISCORD_UPDATE ; 
 int /*<<< orphan*/  CMD_EVENT_NETPLAY_DEINIT ; 
 int /*<<< orphan*/  CMD_EVENT_NETPLAY_INIT ; 
 int /*<<< orphan*/  CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED ; 
 int /*<<< orphan*/  DISCORD_PRESENCE_NETPLAY_HOSTING ; 
 int /*<<< orphan*/  NETPLAY_HOST_METHOD_MITM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  RARCH_NETPLAY_CTL_ENABLE_CLIENT ; 
 int /*<<< orphan*/  RARCH_NETPLAY_CTL_IS_DATA_INITED ; 
 scalar_t__ FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ discord_is_inited ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int is_mitm ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct netplay_room*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct netplay_room* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct string_list*) ; 
 struct string_list* FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC16 (char*) ; 

__attribute__((used)) static void FUNC17(retro_task_t *task,
      void *task_data, void *user_data, const char *error)
{
   FUNC0("[netplay] announcing netplay game... \n");

   if (task_data)
   {
      unsigned i, ip_len, port_len;
      http_transfer_data_t *data     = (http_transfer_data_t*)task_data;
      struct netplay_room *host_room = FUNC7();
      struct string_list *lines      = NULL;
      char *mitm_ip                  = NULL;
      char *mitm_port                = NULL;
      char *buf                      = NULL;
      char *host_string              = NULL;

      if (data->len == 0)
      {
         FUNC3(task_data);
         return;
      }

      buf = (char*)FUNC1(1, data->len + 1);

      FUNC4(buf, data->data, data->len);

      lines = FUNC14(buf, "\n");

      if (lines->size == 0)
      {
         FUNC13(lines);
         FUNC3(buf);
         FUNC3(task_data);
         return;
      }

      FUNC5(host_room, 0, sizeof(*host_room));

      for (i = 0; i < lines->size; i++)
      {
         const char *line = lines->elems[i].data;

         if (!FUNC10(line))
         {
            struct string_list *kv = FUNC14(line, "=");
            const char *key = NULL;
            const char *val = NULL;

            if (!kv)
               continue;

            if (kv->size != 2)
            {
               FUNC13(kv);
               continue;
            }

            key = kv->elems[0].data;
            val = kv->elems[1].data;

            if (FUNC11(key, "id"))
               FUNC8(val, "%i", &host_room->id);
            if (FUNC11(key, "username"))
               FUNC15(host_room->nickname, val, sizeof(host_room->nickname));
            if (FUNC11(key, "ip"))
               FUNC15(host_room->address, val, sizeof(host_room->address));
            if (FUNC11(key, "mitm_ip"))
            {
               mitm_ip = FUNC9(val);
               FUNC15(host_room->mitm_address, val, sizeof(host_room->mitm_address));
            }
            if (FUNC11(key, "port"))
               FUNC8(val, "%i", &host_room->port);
            if (FUNC11(key, "mitm_port"))
            {
               mitm_port = FUNC9(val);
               FUNC8(mitm_port, "%i", &host_room->mitm_port);
            }
            if (FUNC11(key, "core_name"))
               FUNC15(host_room->corename, val, sizeof(host_room->corename));
            if (FUNC11(key, "frontend"))
               FUNC15(host_room->frontend, val, sizeof(host_room->frontend));
            if (FUNC11(key, "core_version"))
               FUNC15(host_room->coreversion, val, sizeof(host_room->coreversion));
            if (FUNC11(key, "game_name"))
               FUNC15(host_room->gamename, val, sizeof(host_room->gamename));
            if (FUNC11(key, "game_crc"))
               FUNC8(val, "%08d", &host_room->gamecrc);
            if (FUNC11(key, "host_method"))
               FUNC8(val, "%i", &host_room->host_method);
            if (FUNC11(key, "has_password"))
            {
               if (FUNC12(val, "true") || FUNC11(val, "1"))
                  host_room->has_password = true;
               else
                  host_room->has_password = false;
            }
            if (FUNC11(key, "has_spectate_password"))
            {
               if (FUNC12(val, "true") || FUNC11(val, "1"))
                  host_room->has_spectate_password = true;
               else
                  host_room->has_spectate_password = false;
            }
            if (FUNC11(key, "fixed"))
            {
               if (FUNC12(val, "true") || FUNC11(val, "1"))
                  host_room->fixed = true;
               else
                  host_room->fixed = false;
            }
            if (FUNC11(key, "retroarch_version"))
               FUNC15(host_room->retroarch_version, val, sizeof(host_room->retroarch_version));
            if (FUNC11(key, "country"))
               FUNC15(host_room->country, val, sizeof(host_room->country));

            FUNC13(kv);
         }
      }

      if (mitm_ip && mitm_port)
      {
         FUNC0("[netplay] joining relay server: %s:%s\n", mitm_ip, mitm_port);

         ip_len   = (unsigned)FUNC16(mitm_ip);
         port_len = (unsigned)FUNC16(mitm_port);

         /* Enable Netplay client mode */
         if (FUNC6(RARCH_NETPLAY_CTL_IS_DATA_INITED, NULL))
         {
            FUNC2(CMD_EVENT_NETPLAY_DEINIT, NULL);
            is_mitm = true;
            host_room->host_method = NETPLAY_HOST_METHOD_MITM;
         }

         FUNC6(RARCH_NETPLAY_CTL_ENABLE_CLIENT, NULL);

         host_string = (char*)FUNC1(1, ip_len + port_len + 2);

         FUNC4(host_string, mitm_ip, ip_len);
         FUNC4(host_string + ip_len, "|", 1);
         FUNC4(host_string + ip_len + 1, mitm_port, port_len);

         /* Enable Netplay */
         FUNC2(CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, (void*)host_string);
         FUNC2(CMD_EVENT_NETPLAY_INIT, (void*)host_string);

         FUNC3(host_string);
      }

#ifdef HAVE_DISCORD
      if (discord_is_inited)
      {
         discord_userdata_t userdata;
         userdata.status = DISCORD_PRESENCE_NETPLAY_HOSTING;
         command_event(CMD_EVENT_DISCORD_UPDATE, &userdata);
      }
#endif

      FUNC13(lines);
      FUNC3(buf);
      FUNC3(task_data);
      if (mitm_ip)
         FUNC3(mitm_ip);
      if (mitm_port)
         FUNC3(mitm_port);
   }

   return;
}