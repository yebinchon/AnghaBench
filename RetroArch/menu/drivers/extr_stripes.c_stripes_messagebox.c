
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int box_message; } ;
typedef TYPE_1__ stripes_handle_t ;


 int strdup (char const*) ;
 scalar_t__ string_is_empty (char const*) ;

__attribute__((used)) static void stripes_messagebox(void *data, const char *message)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;

   if (!stripes || string_is_empty(message))
      return;

   stripes->box_message = strdup(message);
}
