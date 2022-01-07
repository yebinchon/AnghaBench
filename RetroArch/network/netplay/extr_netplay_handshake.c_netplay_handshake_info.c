
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct retro_system_info {char* library_name; char* library_version; } ;
struct netplay_connection {int mode; int fd; int send_packet_buffer; } ;
struct info_buf_s {void* content_crc; int core_version; int core_name; void** cmd; } ;
typedef int netplay_t ;
typedef int info_buf ;


 int NETPLAY_CMD_INFO ;
 int NETPLAY_CONNECTION_PRE_INFO ;
 int content_get_crc () ;
 void* htonl (int) ;
 int memset (struct info_buf_s*,int ,int) ;
 int netplay_send (int *,int ,struct info_buf_s*,int) ;
 int netplay_send_flush (int *,int ,int) ;
 struct retro_system_info* runloop_get_libretro_system_info () ;
 int strlcpy (int ,char*,int) ;

bool netplay_handshake_info(netplay_t *netplay,
      struct netplay_connection *connection)
{
   struct info_buf_s info_buf;
   uint32_t content_crc = 0;
   struct retro_system_info *system = runloop_get_libretro_system_info();

   memset(&info_buf, 0, sizeof(info_buf));
   info_buf.cmd[0] = htonl(NETPLAY_CMD_INFO);
   info_buf.cmd[1] = htonl(sizeof(info_buf) - 2*sizeof(uint32_t));


   if (system)
   {
      strlcpy(info_buf.core_name,
            system->library_name, sizeof(info_buf.core_name));
      strlcpy(info_buf.core_version,
            system->library_version, sizeof(info_buf.core_version));
   }
   else
   {
      strlcpy(info_buf.core_name,
            "UNKNOWN", sizeof(info_buf.core_name));
      strlcpy(info_buf.core_version,
            "UNKNOWN", sizeof(info_buf.core_version));
   }


   content_crc = content_get_crc();

   if (content_crc != 0)
      info_buf.content_crc = htonl(content_crc);


   if (!netplay_send(&connection->send_packet_buffer, connection->fd,
         &info_buf, sizeof(info_buf)) ||
       !netplay_send_flush(&connection->send_packet_buffer, connection->fd,
         0))
      return 0;

   connection->mode = NETPLAY_CONNECTION_PRE_INFO;
   return 1;
}
