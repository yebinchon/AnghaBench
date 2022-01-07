
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_FAILED_TO_UNDO_LOAD_STATE ;
 int MSG_NO_STATE_HAS_BEEN_LOADED_YET ;
 int MSG_UNDID_LOAD_STATE ;
 int RARCH_NETPLAY_CTL_LOAD_SAVESTATE ;
 scalar_t__ content_undo_load_buf_is_empty () ;
 int content_undo_load_state () ;
 char* msg_hash_to_str (int ) ;
 int netplay_driver_ctl (int ,int *) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void command_event_undo_load_state(char *s, size_t len)
{

   if (content_undo_load_buf_is_empty())
   {
      strlcpy(s,
         msg_hash_to_str(MSG_NO_STATE_HAS_BEEN_LOADED_YET),
         len);
      return;
   }

   if (!content_undo_load_state())
   {
      snprintf(s, len, "%s \"%s\".",
            msg_hash_to_str(MSG_FAILED_TO_UNDO_LOAD_STATE),
            "RAM");
      return;
   }





   strlcpy(s,
         msg_hash_to_str(MSG_UNDID_LOAD_STATE), len);
}
