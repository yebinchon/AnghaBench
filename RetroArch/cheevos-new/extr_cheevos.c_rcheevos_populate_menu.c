
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ cheevos_test_unofficial; scalar_t__ cheevos_hardcore_mode_enable; scalar_t__ cheevos_enable; } ;
struct TYPE_10__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
typedef int rcheevos_cheevo_t ;
struct TYPE_11__ {int list; } ;
typedef TYPE_4__ menu_displaylist_info_t ;
struct TYPE_9__ {int core_count; int unofficial_count; } ;
struct TYPE_12__ {TYPE_2__ patchdata; int * unofficial; int * core; } ;


 int FILE_TYPE_NONE ;
 int MENU_ENUM_LABEL_ACHIEVEMENT_PAUSE ;
 int MENU_ENUM_LABEL_ACHIEVEMENT_RESUME ;
 int MENU_ENUM_LABEL_CHEEVOS_LOCKED_ENTRY ;
 int MENU_ENUM_LABEL_CHEEVOS_UNOFFICIAL_ENTRY ;
 int MENU_ENUM_LABEL_NO_ACHIEVEMENTS_TO_DISPLAY ;
 int MENU_ENUM_LABEL_VALUE_ACHIEVEMENT_PAUSE ;
 int MENU_ENUM_LABEL_VALUE_ACHIEVEMENT_RESUME ;
 int MENU_ENUM_LABEL_VALUE_NO_ACHIEVEMENTS_TO_DISPLAY ;
 int MENU_SETTING_ACTION_PAUSE_ACHIEVEMENTS ;
 int MENU_SETTING_ACTION_RESUME_ACHIEVEMENTS ;
 TYPE_3__* config_get_ptr () ;
 int menu_entries_append_enum (int ,int ,int ,int ,int ,int ,int ) ;
 int msg_hash_to_str (int ) ;
 int rcheevos_append_menu_achievement (TYPE_4__*,int ,int ,int ) ;
 int rcheevos_hardcore_paused ;
 scalar_t__ rcheevos_loaded ;
 TYPE_5__ rcheevos_locals ;

void rcheevos_populate_menu(void* data)
{
}
