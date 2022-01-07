
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int menu_driver; } ;
struct TYPE_5__ {TYPE_1__ arrays; } ;
typedef TYPE_2__ settings_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;


 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS ;
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_MATERIALUI ;
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_OZONE ;
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_RGUI ;
 TYPE_2__* config_get_ptr () ;
 char* msg_hash_to_str (int) ;
 int sanitize_to_string (char*,char const*,size_t) ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_equal (int ,char*) ;

__attribute__((used)) static int action_get_title_left_thumbnails(
      const char *path, const char *label, unsigned menu_type, char *s, size_t len)
{
   settings_t *settings = config_get_ptr();
   const char *title = ((void*)0);
   enum msg_hash_enums label_value;


   if (string_is_equal(settings->arrays.menu_driver, "rgui"))
      label_value = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_RGUI;
   else if (string_is_equal(settings->arrays.menu_driver, "ozone"))
      label_value = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_OZONE;
   else if (string_is_equal(settings->arrays.menu_driver, "glui"))
      label_value = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_MATERIALUI;
   else
      label_value = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS;

   title = msg_hash_to_str(label_value);

   if (s && !string_is_empty(title))
   {
      sanitize_to_string(s, title, len);
      return 1;
   }

   return 0;
}
