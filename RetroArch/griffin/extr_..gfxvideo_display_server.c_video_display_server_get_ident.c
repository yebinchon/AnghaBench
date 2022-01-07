
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* ident; } ;


 TYPE_1__* current_display_server ;

const char *video_display_server_get_ident(void)
{
   if (!current_display_server)
      return "null";
   return current_display_server->ident;
}
