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
struct retro_system_info {char* library_name; char* library_version; } ;
struct netplay_connection {int /*<<< orphan*/  mode; int /*<<< orphan*/  fd; int /*<<< orphan*/  send_packet_buffer; } ;
struct info_buf_s {void* content_crc; int /*<<< orphan*/  core_version; int /*<<< orphan*/  core_name; void** cmd; } ;
typedef  int /*<<< orphan*/  netplay_t ;
typedef  int /*<<< orphan*/  info_buf ;

/* Variables and functions */
 int NETPLAY_CMD_INFO ; 
 int /*<<< orphan*/  NETPLAY_CONNECTION_PRE_INFO ; 
 int FUNC0 () ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct info_buf_s*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct info_buf_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct retro_system_info* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

bool FUNC7(netplay_t *netplay,
      struct netplay_connection *connection)
{
   struct info_buf_s info_buf;
   uint32_t      content_crc        = 0;
   struct retro_system_info *system = FUNC5();

   FUNC2(&info_buf, 0, sizeof(info_buf));
   info_buf.cmd[0] = FUNC1(NETPLAY_CMD_INFO);
   info_buf.cmd[1] = FUNC1(sizeof(info_buf) - 2*sizeof(uint32_t));

   /* Get our core info */
   if (system)
   {
      FUNC6(info_buf.core_name,
            system->library_name, sizeof(info_buf.core_name));
      FUNC6(info_buf.core_version,
            system->library_version, sizeof(info_buf.core_version));
   }
   else
   {
      FUNC6(info_buf.core_name,
            "UNKNOWN", sizeof(info_buf.core_name));
      FUNC6(info_buf.core_version,
            "UNKNOWN", sizeof(info_buf.core_version));
   }

   /* Get our content CRC */
   content_crc = FUNC0();

   if (content_crc != 0)
      info_buf.content_crc = FUNC1(content_crc);

   /* Send it off and wait for info back */
   if (!FUNC3(&connection->send_packet_buffer, connection->fd,
         &info_buf, sizeof(info_buf)) ||
       !FUNC4(&connection->send_packet_buffer, connection->fd,
         false))
      return false;

   connection->mode = NETPLAY_CONNECTION_PRE_INFO;
   return true;
}