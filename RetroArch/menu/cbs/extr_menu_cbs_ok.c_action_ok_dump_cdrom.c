
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_NO_DISC_INSERTED ;
 int RARCH_LOG (char*) ;
 int cdrom_drive_has_media (char const) ;
 int msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 scalar_t__ string_is_empty (char const*) ;
 int task_push_cdrom_dump (char const*) ;

__attribute__((used)) static int action_ok_dump_cdrom(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   if (string_is_empty(label))
      return -1;
   return 0;
}
