
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct string_list {TYPE_1__* elems; } ;
struct TYPE_8__ {char* network_buildbot_assets_url; char const* network_buildbot_url; } ;
struct TYPE_9__ {TYPE_2__ paths; } ;
typedef TYPE_3__ settings_t ;
typedef int s3 ;
typedef int s2 ;
typedef int s ;
typedef int retro_task_callback_t ;
struct TYPE_10__ {int enum_idx; char* path; } ;
typedef TYPE_4__ file_transfer_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
struct TYPE_7__ {char const* data; } ;


 int FILE_PATH_LAKKA_URL ;
 int PATH_MAX_LENGTH ;
 scalar_t__ calloc (int,int) ;
 int cb_generic_dir_download ;
 int cb_generic_download ;
 TYPE_3__* config_get_ptr () ;
 char* file_path_str (int ) ;
 int fill_pathname_join (char*,char const*,char const*,int) ;
 char const* lakka_get_project () ;
 int msg_hash_to_str (int) ;
 int net_http_urlencode_full (char*,char*,int) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;
 int strlcpy (char*,char const*,int) ;
 int task_push_http_transfer (char*,int,int ,int ,TYPE_4__*) ;

__attribute__((used)) static int action_ok_download_generic(const char *path,
      const char *label, const char *menu_label,
      unsigned type, size_t idx, size_t entry_idx,
      enum msg_hash_enums enum_idx)
{
   return 0;
}
