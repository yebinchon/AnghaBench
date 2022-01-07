
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* msgbox; } ;
typedef TYPE_1__ materialui_handle_t ;


 int string_is_empty (char const*) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void materialui_get_message(void *data, const char *message)
{
   materialui_handle_t *mui = (materialui_handle_t*)data;

   if (!mui || !message || !*message)
      return;

   mui->msgbox[0] = '\0';

   if (!string_is_empty(message))
      strlcpy(mui->msgbox, message, sizeof(mui->msgbox));
}
