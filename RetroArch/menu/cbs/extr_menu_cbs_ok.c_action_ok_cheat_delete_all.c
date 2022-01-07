
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CHEAT_DELETE_ALL_INSTRUCTIONS ;
 int msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int action_ok_cheat_delete_all(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char msg[256] ;
   strlcpy(msg, msg_hash_to_str(MSG_CHEAT_DELETE_ALL_INSTRUCTIONS), sizeof(msg));
   msg[sizeof(msg) - 1] = 0;

   runloop_msg_queue_push(msg, 1, 240, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   return 0 ;
}
