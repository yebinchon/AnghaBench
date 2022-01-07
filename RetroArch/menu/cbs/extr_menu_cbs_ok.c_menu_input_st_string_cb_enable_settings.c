
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int menu_content_show_settings; } ;
struct TYPE_5__ {int menu_content_show_settings_password; } ;
struct TYPE_7__ {TYPE_2__ bools; TYPE_1__ paths; } ;
typedef TYPE_3__ settings_t ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_INPUT_ENABLE_SETTINGS_PASSWORD_NOK ;
 int MSG_INPUT_ENABLE_SETTINGS_PASSWORD_OK ;
 TYPE_3__* config_get_ptr () ;
 int menu_input_dialog_end () ;
 char* menu_input_dialog_get_buffer () ;
 int msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 scalar_t__ string_is_equal (char const*,int ) ;

__attribute__((used)) static void menu_input_st_string_cb_enable_settings(void *userdata,
      const char *str)
{
   if (str && *str)
   {
      const char *label = menu_input_dialog_get_buffer();
      settings_t *settings = config_get_ptr();

      if (string_is_equal(label, settings->paths.menu_content_show_settings_password))
      {
         settings->bools.menu_content_show_settings = 1;

         runloop_msg_queue_push(
            msg_hash_to_str(MSG_INPUT_ENABLE_SETTINGS_PASSWORD_OK),
            1, 100, 1,
            ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      }
      else
      {
         runloop_msg_queue_push(
            msg_hash_to_str(MSG_INPUT_ENABLE_SETTINGS_PASSWORD_NOK),
            1, 100, 1,
            ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      }
   }

   menu_input_dialog_end();
}
