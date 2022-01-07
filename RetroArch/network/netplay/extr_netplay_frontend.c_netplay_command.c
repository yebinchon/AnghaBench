
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netplay_connection {int dummy; } ;
typedef int netplay_t ;
typedef enum netplay_cmd { ____Placeholder_netplay_cmd } netplay_cmd ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int netplay_send_raw_cmd (int *,struct netplay_connection*,int,void*,size_t) ;
 int retro_assert (int *) ;
 int runloop_msg_queue_push (char const*,int,int,int,int *,int ,int ) ;

bool netplay_command(netplay_t* netplay, struct netplay_connection *connection,
   enum netplay_cmd cmd, void* data, size_t sz, const char* command_str,
   const char* success_msg)
{
   retro_assert(netplay);

   if (!netplay_send_raw_cmd(netplay, connection, cmd, data, sz))
      return 0;

   runloop_msg_queue_push(success_msg, 1, 180, 0, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   return 1;
}
