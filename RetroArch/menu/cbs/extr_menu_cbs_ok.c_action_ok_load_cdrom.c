
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct retro_system_info {int library_name; } ;
struct TYPE_3__ {int * environ_get; int * args; int * argv; scalar_t__ argc; } ;
typedef TYPE_1__ content_ctx_info_t ;
typedef int cdrom_path ;


 int CORE_TYPE_PLAIN ;
 int FRONTEND_FORK_CORE_WITH_ARGS ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_LOAD_CORE_FIRST ;
 int MSG_NO_DISC_INSERTED ;
 int RARCH_LOG (char*,...) ;
 int RARCH_PATH_CONTENT ;
 int cdrom_device_fillpath (char*,int,char const,int ,int) ;
 int cdrom_drive_has_media (char const) ;
 int frontend_driver_set_fork (int ) ;
 int msg_hash_to_str (int ) ;
 int path_clear (int ) ;
 int path_set (int ,char*) ;
 struct retro_system_info* runloop_get_libretro_system_info () ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 int string_is_empty (int ) ;
 int task_push_load_content_with_core_from_menu (char*,TYPE_1__*,int ,int *,int *) ;

__attribute__((used)) static int action_ok_load_cdrom(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   return 0;
}
