
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct item_cheat {int idx; void* desc; void* code; } ;
typedef int msg ;
struct TYPE_3__ {size_t idx; } ;
struct TYPE_4__ {int size; TYPE_1__ working_cheat; struct item_cheat* cheats; } ;


 int CHEAT_HANDLER_TYPE_RETRO ;
 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CHEAT_COPY_AFTER_SUCCESS ;
 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 int cheat_manager_get_size () ;
 int cheat_manager_realloc (unsigned int,int ) ;
 TYPE_2__ cheat_manager_state ;
 int memcpy (struct item_cheat*,struct item_cheat*,int) ;
 int menu_driver_ctl (int ,int *) ;
 int menu_entries_ctl (int ,int*) ;
 int msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 void* strdup (void*) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int action_ok_cheat_copy_after(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   int i;
   struct item_cheat tmp;
   char msg[256];
   bool refresh = 0 ;
   unsigned int new_size = cheat_manager_get_size() + 1;

   cheat_manager_realloc(new_size, CHEAT_HANDLER_TYPE_RETRO);

   memcpy(&tmp, &cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx], sizeof(struct item_cheat));
   tmp.idx = cheat_manager_state.working_cheat.idx+1 ;
   if (tmp.code)
      tmp.code = strdup(tmp.code);
   if (tmp.desc)
      tmp.desc = strdup(tmp.desc);

   for (i = cheat_manager_state.size-2 ; i >= (int)(cheat_manager_state.working_cheat.idx+1); i--)
   {
      memcpy(&cheat_manager_state.cheats[i+1], &cheat_manager_state.cheats[i], sizeof(struct item_cheat));
      cheat_manager_state.cheats[i+1].idx++ ;
   }

   memcpy(&cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx+1], &tmp, sizeof(struct item_cheat ));

   menu_entries_ctl(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   menu_driver_ctl(RARCH_MENU_CTL_SET_PREVENT_POPULATE, ((void*)0));

   strlcpy(msg, msg_hash_to_str(MSG_CHEAT_COPY_AFTER_SUCCESS), sizeof(msg));
   msg[sizeof(msg) - 1] = 0;

   runloop_msg_queue_push(msg, 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   return 0 ;
}
