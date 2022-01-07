
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_NO_SAVE_STATE_HAS_BEEN_OVERWRITTEN_YET ;
 scalar_t__ content_undo_save_buf_is_empty () ;
 int content_undo_save_state () ;
 int msg_hash_to_str (int ) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static void command_event_undo_save_state(char *s, size_t len)
{
   if (content_undo_save_buf_is_empty())
   {
      strlcpy(s,
         msg_hash_to_str(MSG_NO_SAVE_STATE_HAS_BEEN_OVERWRITTEN_YET), len);
      return;
   }

   if (!content_undo_save_state())
      return;
}
