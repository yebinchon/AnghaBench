
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct netplay_room {int has_password; int has_spectate_password; int fixed; int host_method; int country; int retroarch_version; int gamecrc; int gamename; int coreversion; int frontend; int corename; int mitm_port; int port; int mitm_address; int address; int nickname; int id; } ;
typedef int retro_task_t ;
struct TYPE_4__ {scalar_t__ len; char* data; } ;
typedef TYPE_2__ http_transfer_data_t ;
typedef void discord_userdata_t ;
struct TYPE_3__ {char* data; } ;


 int CMD_EVENT_DISCORD_UPDATE ;
 int CMD_EVENT_NETPLAY_DEINIT ;
 int CMD_EVENT_NETPLAY_INIT ;
 int CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED ;
 int DISCORD_PRESENCE_NETPLAY_HOSTING ;
 int NETPLAY_HOST_METHOD_MITM ;
 int RARCH_LOG (char*,...) ;
 int RARCH_NETPLAY_CTL_ENABLE_CLIENT ;
 int RARCH_NETPLAY_CTL_IS_DATA_INITED ;
 scalar_t__ calloc (int,unsigned int) ;
 int command_event (int ,void*) ;
 scalar_t__ discord_is_inited ;
 int free (char*) ;
 int is_mitm ;
 int memcpy (char*,char*,unsigned int) ;
 int memset (struct netplay_room*,int ,int) ;
 scalar_t__ netplay_driver_ctl (int ,int *) ;
 struct netplay_room* netplay_get_host_room () ;
 int sscanf (char const*,char*,int *) ;
 char* strdup (char const*) ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 scalar_t__ string_is_equal_noncase (char const*,char*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void netplay_announce_cb(retro_task_t *task,
      void *task_data, void *user_data, const char *error)
{
   RARCH_LOG("[netplay] announcing netplay game... \n");

   if (task_data)
   {
      unsigned i, ip_len, port_len;
      http_transfer_data_t *data = (http_transfer_data_t*)task_data;
      struct netplay_room *host_room = netplay_get_host_room();
      struct string_list *lines = ((void*)0);
      char *mitm_ip = ((void*)0);
      char *mitm_port = ((void*)0);
      char *buf = ((void*)0);
      char *host_string = ((void*)0);

      if (data->len == 0)
      {
         free(task_data);
         return;
      }

      buf = (char*)calloc(1, data->len + 1);

      memcpy(buf, data->data, data->len);

      lines = string_split(buf, "\n");

      if (lines->size == 0)
      {
         string_list_free(lines);
         free(buf);
         free(task_data);
         return;
      }

      memset(host_room, 0, sizeof(*host_room));

      for (i = 0; i < lines->size; i++)
      {
         const char *line = lines->elems[i].data;

         if (!string_is_empty(line))
         {
            struct string_list *kv = string_split(line, "=");
            const char *key = ((void*)0);
            const char *val = ((void*)0);

            if (!kv)
               continue;

            if (kv->size != 2)
            {
               string_list_free(kv);
               continue;
            }

            key = kv->elems[0].data;
            val = kv->elems[1].data;

            if (string_is_equal(key, "id"))
               sscanf(val, "%i", &host_room->id);
            if (string_is_equal(key, "username"))
               strlcpy(host_room->nickname, val, sizeof(host_room->nickname));
            if (string_is_equal(key, "ip"))
               strlcpy(host_room->address, val, sizeof(host_room->address));
            if (string_is_equal(key, "mitm_ip"))
            {
               mitm_ip = strdup(val);
               strlcpy(host_room->mitm_address, val, sizeof(host_room->mitm_address));
            }
            if (string_is_equal(key, "port"))
               sscanf(val, "%i", &host_room->port);
            if (string_is_equal(key, "mitm_port"))
            {
               mitm_port = strdup(val);
               sscanf(mitm_port, "%i", &host_room->mitm_port);
            }
            if (string_is_equal(key, "core_name"))
               strlcpy(host_room->corename, val, sizeof(host_room->corename));
            if (string_is_equal(key, "frontend"))
               strlcpy(host_room->frontend, val, sizeof(host_room->frontend));
            if (string_is_equal(key, "core_version"))
               strlcpy(host_room->coreversion, val, sizeof(host_room->coreversion));
            if (string_is_equal(key, "game_name"))
               strlcpy(host_room->gamename, val, sizeof(host_room->gamename));
            if (string_is_equal(key, "game_crc"))
               sscanf(val, "%08d", &host_room->gamecrc);
            if (string_is_equal(key, "host_method"))
               sscanf(val, "%i", &host_room->host_method);
            if (string_is_equal(key, "has_password"))
            {
               if (string_is_equal_noncase(val, "true") || string_is_equal(val, "1"))
                  host_room->has_password = 1;
               else
                  host_room->has_password = 0;
            }
            if (string_is_equal(key, "has_spectate_password"))
            {
               if (string_is_equal_noncase(val, "true") || string_is_equal(val, "1"))
                  host_room->has_spectate_password = 1;
               else
                  host_room->has_spectate_password = 0;
            }
            if (string_is_equal(key, "fixed"))
            {
               if (string_is_equal_noncase(val, "true") || string_is_equal(val, "1"))
                  host_room->fixed = 1;
               else
                  host_room->fixed = 0;
            }
            if (string_is_equal(key, "retroarch_version"))
               strlcpy(host_room->retroarch_version, val, sizeof(host_room->retroarch_version));
            if (string_is_equal(key, "country"))
               strlcpy(host_room->country, val, sizeof(host_room->country));

            string_list_free(kv);
         }
      }

      if (mitm_ip && mitm_port)
      {
         RARCH_LOG("[netplay] joining relay server: %s:%s\n", mitm_ip, mitm_port);

         ip_len = (unsigned)strlen(mitm_ip);
         port_len = (unsigned)strlen(mitm_port);


         if (netplay_driver_ctl(RARCH_NETPLAY_CTL_IS_DATA_INITED, ((void*)0)))
         {
            command_event(CMD_EVENT_NETPLAY_DEINIT, ((void*)0));
            is_mitm = 1;
            host_room->host_method = NETPLAY_HOST_METHOD_MITM;
         }

         netplay_driver_ctl(RARCH_NETPLAY_CTL_ENABLE_CLIENT, ((void*)0));

         host_string = (char*)calloc(1, ip_len + port_len + 2);

         memcpy(host_string, mitm_ip, ip_len);
         memcpy(host_string + ip_len, "|", 1);
         memcpy(host_string + ip_len + 1, mitm_port, port_len);


         command_event(CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, (void*)host_string);
         command_event(CMD_EVENT_NETPLAY_INIT, (void*)host_string);

         free(host_string);
      }
      string_list_free(lines);
      free(buf);
      free(task_data);
      if (mitm_ip)
         free(mitm_ip);
      if (mitm_port)
         free(mitm_port);
   }

   return;
}
