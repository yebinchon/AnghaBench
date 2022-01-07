
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* (* get_output_options ) (int ) ;} ;


 TYPE_1__* current_display_server ;
 int current_display_server_data ;
 char const* stub1 (int ) ;

const char *video_display_server_get_output_options(void)
{
   if (current_display_server && current_display_server->get_output_options)
      return current_display_server->get_output_options(current_display_server_data);
   return ((void*)0);
}
