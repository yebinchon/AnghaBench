
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ run_frame_count; scalar_t__ self_frame_count; scalar_t__ unread_frame_count; int connected_players; scalar_t__* read_frame_count; scalar_t__ server_frame_count; scalar_t__ other_frame_count; int run_ptr; int other_ptr; int server_ptr; int * read_ptr; int self_ptr; } ;
typedef TYPE_1__ netplay_t ;


 int MAX_CLIENTS ;
 int netplay_update_unread_ptr (TYPE_1__*) ;

__attribute__((used)) static void netplay_force_future(netplay_t *netplay)
{

   netplay->run_ptr = netplay->self_ptr;
   netplay->run_frame_count = netplay->self_frame_count;



   netplay_update_unread_ptr(netplay);

   if (netplay->unread_frame_count < netplay->run_frame_count)
   {
      uint32_t client;
      for (client = 0; client < MAX_CLIENTS; client++)
      {
         if (!(netplay->connected_players & (1<<client)))
            continue;

         if (netplay->read_frame_count[client] < netplay->run_frame_count)
         {
            netplay->read_ptr[client] = netplay->run_ptr;
            netplay->read_frame_count[client] = netplay->run_frame_count;
         }
      }
      if (netplay->server_frame_count < netplay->run_frame_count)
      {
         netplay->server_ptr = netplay->run_ptr;
         netplay->server_frame_count = netplay->run_frame_count;
      }
      netplay_update_unread_ptr(netplay);
   }
   if (netplay->other_frame_count < netplay->run_frame_count)
   {
      netplay->other_ptr = netplay->run_ptr;
      netplay->other_frame_count = netplay->run_frame_count;
   }
}
