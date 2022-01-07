
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netplay_t ;
typedef int msg ;
typedef enum rarch_netplay_connection_mode { ____Placeholder_rarch_netplay_connection_mode } rarch_netplay_connection_mode ;
typedef int device_str ;


 int MAX_INPUT_DEVICES ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_NETPLAY_PLAYER_S_LEFT ;
 int MSG_NETPLAY_S_HAS_JOINED_AS_PLAYER_N ;
 int MSG_NETPLAY_S_HAS_JOINED_WITH_INPUT_DEVICES_S ;
 int MSG_NETPLAY_YOU_HAVE_JOINED_AS_PLAYER_N ;
 int MSG_NETPLAY_YOU_HAVE_JOINED_WITH_INPUT_DEVICES_S ;
 int MSG_NETPLAY_YOU_HAVE_LEFT_THE_GAME ;



 int NETPLAY_NICK_LEN ;
 int RARCH_LOG (char*,char*) ;
 char* msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 size_t snprintf (char*,int,char*,...) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void announce_play_spectate(netplay_t *netplay,
      const char *nick,
      enum rarch_netplay_connection_mode mode, uint32_t devices)
{
   char msg[512];
   msg[0] = msg[sizeof(msg) - 1] = '\0';

   switch (mode)
   {
      case 128:
         if (nick)
            snprintf(msg, sizeof(msg) - 1,
                  msg_hash_to_str(MSG_NETPLAY_PLAYER_S_LEFT), NETPLAY_NICK_LEN,
                  nick);
         else
            strlcpy(msg, msg_hash_to_str(MSG_NETPLAY_YOU_HAVE_LEFT_THE_GAME), sizeof(msg));
         break;

      case 130:
      case 129:
      {
         uint32_t device;
         uint32_t one_device = (uint32_t) -1;
         char device_str[512];
         size_t device_str_len;

         for (device = 0; device < MAX_INPUT_DEVICES; device++)
         {
            if (!(devices & (1<<device)))
               continue;
            if (one_device == (uint32_t) -1)
               one_device = device;
            else
            {
               one_device = (uint32_t) -1;
               break;
            }
         }

         if (one_device != (uint32_t) -1)
         {

            if (nick)
               snprintf(msg, sizeof(msg) - 1,
                     msg_hash_to_str(MSG_NETPLAY_S_HAS_JOINED_AS_PLAYER_N),
                     NETPLAY_NICK_LEN, nick, one_device + 1);
            else
               snprintf(msg, sizeof(msg) - 1,
                     msg_hash_to_str(MSG_NETPLAY_YOU_HAVE_JOINED_AS_PLAYER_N),
                     one_device + 1);
         }
         else
         {

            device_str[0] = 0;
            device_str_len = 0;
            for (device = 0; device < MAX_INPUT_DEVICES; device++)
            {
               if (!(devices & (1<<device)))
                  continue;
               if (device_str_len)
                  device_str_len += snprintf(device_str + device_str_len,
                        sizeof(device_str) - 1 - device_str_len, ", ");
               device_str_len += snprintf(device_str + device_str_len,
                     sizeof(device_str) - 1 - device_str_len, "%u",
                     (unsigned) (device+1));
            }


            if (nick)
               snprintf(msg, sizeof(msg) - 1,
                     msg_hash_to_str(
                           MSG_NETPLAY_S_HAS_JOINED_WITH_INPUT_DEVICES_S),
                     NETPLAY_NICK_LEN, nick, sizeof(device_str),
                     device_str);
            else
               snprintf(msg, sizeof(msg) - 1,
                     msg_hash_to_str(
                           MSG_NETPLAY_YOU_HAVE_JOINED_WITH_INPUT_DEVICES_S),
                     sizeof(device_str), device_str);
         }

         break;
      }

      default:
         break;
   }

   if (msg[0])
   {
      RARCH_LOG("[netplay] %s\n", msg);
      runloop_msg_queue_push(msg, 1, 180, 0, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }
}
