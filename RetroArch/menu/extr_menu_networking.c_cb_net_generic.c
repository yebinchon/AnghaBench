
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int retro_task_t ;
struct TYPE_3__ {char* core_buf; size_t core_len; } ;
typedef TYPE_1__ menu_handle_t ;
typedef char http_transfer_data_t ;
typedef char file_transfer_t ;


 int FILE_PATH_INDEX_DIRS_URL ;
 int MENU_ENTRIES_CTL_UNSET_REFRESH ;
 int MSG_UNKNOWN ;
 int PATH_MAX_LENGTH ;
 int cb_net_generic_subdir ;
 int file_path_str (int ) ;
 int fill_pathname_parent_dir (char*,int ,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;
 TYPE_1__* menu_driver_get_ptr () ;
 int menu_entries_ctl (int ,int*) ;
 int net_http_urlencode_full (char*,char*,int) ;
 int string_is_empty (char*) ;
 int strlcat (char*,int ,int) ;
 int strlcpy (int ,char*,int) ;
 int strstr (int ,int ) ;
 int task_push_http_transfer (char*,int,char*,int ,char*) ;

void cb_net_generic(retro_task_t *task,
      void *task_data, void *user_data, const char *err)
{
}
