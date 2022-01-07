
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* msgbox; int force_redraw; } ;
typedef TYPE_1__ rgui_t ;


 int string_is_empty (char const*) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void rgui_set_message(void *data, const char *message)
{
   rgui_t *rgui = (rgui_t*)data;

   if (!rgui || !message)
      return;

   rgui->msgbox[0] = '\0';

   if (!string_is_empty(message))
      strlcpy(rgui->msgbox, message, sizeof(rgui->msgbox));

   rgui->force_redraw = 1;
}
