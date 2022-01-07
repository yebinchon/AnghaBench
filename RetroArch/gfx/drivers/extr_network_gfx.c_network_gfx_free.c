
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fd; } ;
typedef TYPE_1__ network_video_t ;


 int font_driver_free_osd () ;
 int free (TYPE_1__*) ;
 TYPE_1__* network_menu_frame ;
 TYPE_1__* network_video_temp_buf ;
 int socket_close (scalar_t__) ;

__attribute__((used)) static void network_gfx_free(void *data)
{
   network_video_t *network = (network_video_t*)data;

   if (network_menu_frame)
   {
      free(network_menu_frame);
      network_menu_frame = ((void*)0);
   }

   if (network_video_temp_buf)
   {
      free(network_video_temp_buf);
      network_video_temp_buf = ((void*)0);
   }

   font_driver_free_osd();

   if (network->fd >= 0)
      socket_close(network->fd);

   if (network)
      free(network);
}
