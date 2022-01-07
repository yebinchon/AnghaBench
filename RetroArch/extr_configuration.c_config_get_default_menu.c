
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum menu_driver_enum { ____Placeholder_menu_driver_enum } menu_driver_enum ;
struct TYPE_3__ {char const* menu; } ;
struct TYPE_4__ {TYPE_1__ settings; } ;


 int MENU_DEFAULT_DRIVER ;







 TYPE_2__ g_defaults ;
 int string_is_empty (char const*) ;

const char *config_get_default_menu(void)
{
   return "null";
}
