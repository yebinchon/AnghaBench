
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msg ;
struct TYPE_2__ {int delete_state; } ;


 int CHEAT_HANDLER_TYPE_EMU ;
 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CHEAT_DELETE_ALL_SUCCESS ;
 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 int cheat_manager_realloc (int ,int ) ;
 TYPE_1__ cheat_manager_state ;
 int menu_driver_ctl (int ,int *) ;
 int menu_entries_ctl (int ,int*) ;
 int msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int action_right_cheat_delete_all(unsigned type, const char *label,
      bool wraparound)
{
   bool refresh = 0 ;
   char msg[256];

   if ( ++cheat_manager_state.delete_state >= 5 )
   {
      msg[0] = '\0';
      cheat_manager_state.delete_state = 0 ;
      cheat_manager_realloc(0, CHEAT_HANDLER_TYPE_EMU) ;
      menu_entries_ctl(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
      menu_driver_ctl(RARCH_MENU_CTL_SET_PREVENT_POPULATE, ((void*)0));

      strlcpy(msg,
            msg_hash_to_str(MSG_CHEAT_DELETE_ALL_SUCCESS), sizeof(msg));
      msg[sizeof(msg) - 1] = 0;

      runloop_msg_queue_push(msg, 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }

   return 0;
}
