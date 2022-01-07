
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char menu_thumbnails; char menu_left_thumbnails; } ;
struct TYPE_5__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;


 int MENU_ENUM_LABEL_VALUE_OFF ;
 TYPE_2__* config_get_ptr () ;
 char const* msg_hash_to_str (int ) ;

__attribute__((used)) static const char *stripes_thumbnails_ident(char pos)
{
   char folder = 0;
   settings_t *settings = config_get_ptr();

   if (pos == 'R')
      folder = settings->uints.menu_thumbnails;
   if (pos == 'L')
      folder = settings->uints.menu_left_thumbnails;

   switch (folder)
   {
      case 1:
         return "Named_Snaps";
      case 2:
         return "Named_Titles";
      case 3:
         return "Named_Boxarts";
      case 0:
      default:
         break;
   }

   return msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF);
}
