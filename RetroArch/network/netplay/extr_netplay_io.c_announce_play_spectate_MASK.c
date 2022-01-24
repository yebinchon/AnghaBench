#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  netplay_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  enum rarch_netplay_connection_mode { ____Placeholder_rarch_netplay_connection_mode } rarch_netplay_connection_mode ;
typedef  int /*<<< orphan*/  device_str ;

/* Variables and functions */
 int MAX_INPUT_DEVICES ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_NETPLAY_PLAYER_S_LEFT ; 
 int /*<<< orphan*/  MSG_NETPLAY_S_HAS_JOINED_AS_PLAYER_N ; 
 int /*<<< orphan*/  MSG_NETPLAY_S_HAS_JOINED_WITH_INPUT_DEVICES_S ; 
 int /*<<< orphan*/  MSG_NETPLAY_YOU_HAVE_JOINED_AS_PLAYER_N ; 
 int /*<<< orphan*/  MSG_NETPLAY_YOU_HAVE_JOINED_WITH_INPUT_DEVICES_S ; 
 int /*<<< orphan*/  MSG_NETPLAY_YOU_HAVE_LEFT_THE_GAME ; 
#define  NETPLAY_CONNECTION_PLAYING 130 
#define  NETPLAY_CONNECTION_SLAVE 129 
#define  NETPLAY_CONNECTION_SPECTATING 128 
 int NETPLAY_NICK_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(netplay_t *netplay,
      const char *nick,
      enum rarch_netplay_connection_mode mode, uint32_t devices)
{
   char msg[512];
   msg[0] = msg[sizeof(msg) - 1] = '\0';

   switch (mode)
   {
      case NETPLAY_CONNECTION_SPECTATING:
         if (nick)
            FUNC3(msg, sizeof(msg) - 1,
                  FUNC1(MSG_NETPLAY_PLAYER_S_LEFT), NETPLAY_NICK_LEN,
                  nick);
         else
            FUNC4(msg, FUNC1(MSG_NETPLAY_YOU_HAVE_LEFT_THE_GAME), sizeof(msg));
         break;

      case NETPLAY_CONNECTION_PLAYING:
      case NETPLAY_CONNECTION_SLAVE:
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
            /* Only have one device, simpler message */
            if (nick)
               FUNC3(msg, sizeof(msg) - 1,
                     FUNC1(MSG_NETPLAY_S_HAS_JOINED_AS_PLAYER_N),
                     NETPLAY_NICK_LEN, nick, one_device + 1);
            else
               FUNC3(msg, sizeof(msg) - 1,
                     FUNC1(MSG_NETPLAY_YOU_HAVE_JOINED_AS_PLAYER_N),
                     one_device + 1);
         }
         else
         {
            /* Multiple devices, so step one is to make the device string listing them all */
            device_str[0] = 0;
            device_str_len = 0;
            for (device = 0; device < MAX_INPUT_DEVICES; device++)
            {
               if (!(devices & (1<<device)))
                  continue;
               if (device_str_len)
                  device_str_len += FUNC3(device_str + device_str_len,
                        sizeof(device_str) - 1 - device_str_len, ", ");
               device_str_len += FUNC3(device_str + device_str_len,
                     sizeof(device_str) - 1 - device_str_len, "%u",
                     (unsigned) (device+1));
            }

            /* Then we make the final string */
            if (nick)
               FUNC3(msg, sizeof(msg) - 1,
                     FUNC1(
                           MSG_NETPLAY_S_HAS_JOINED_WITH_INPUT_DEVICES_S),
                     NETPLAY_NICK_LEN, nick, sizeof(device_str),
                     device_str);
            else
               FUNC3(msg, sizeof(msg) - 1,
                     FUNC1(
                           MSG_NETPLAY_YOU_HAVE_JOINED_WITH_INPUT_DEVICES_S),
                     sizeof(device_str), device_str);
         }

         break;
      }

      default: /* wrong usage */
         break;
   }

   if (msg[0])
   {
      FUNC0("[netplay] %s\n", msg);
      FUNC2(msg, 1, 180, false, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }
}