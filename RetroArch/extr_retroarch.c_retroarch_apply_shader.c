
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int video_shader_enable; } ;
struct TYPE_9__ {TYPE_2__ bools; } ;
typedef TYPE_3__ settings_t ;
typedef int msg ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
struct TYPE_7__ {char* library_name; } ;
struct TYPE_10__ {TYPE_1__ info; } ;


 int MESSAGE_QUEUE_CATEGORY_ERROR ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_APPLYING_SHADER ;
 int MSG_FAILED_TO_APPLY_SHADER_PRESET ;
 int RARCH_LOG (char*,int ,char const*) ;
 int configuration_set_bool (TYPE_3__*,int ,int) ;
 TYPE_3__* configuration_settings ;
 int fill_pathname_join_delim (char*,int ,char const*,char,int) ;
 int menu_shader_get () ;
 scalar_t__ menu_shader_manager_set_preset (int ,int,char const*,int) ;
 int menu_shader_set_modified (int) ;
 scalar_t__ menu_widgets_inited ;
 int menu_widgets_set_message (char*) ;
 int msg_hash_to_str (int ) ;
 char* path_basename (char const*) ;
 int retroarch_set_runtime_shader_preset (char const*) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 TYPE_4__ runloop_system ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 int video_driver_set_shader (int,char const*) ;

bool retroarch_apply_shader(enum rarch_shader_type type, const char *preset_path, bool message)
{
   return 0;

}
