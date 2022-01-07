
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ get_resolution_list; } ;


 TYPE_1__* current_display_server ;

bool video_display_server_has_resolution_list(void)
{
   return (current_display_server
         && current_display_server->get_resolution_list);
}
