
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int file_list_t ;
struct TYPE_2__ {int match_idx; } ;


 int CHEAT_MATCH_ACTION_TYPE_VIEW ;
 int cheat_manager_match_action (int ,int ,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 TYPE_1__ cheat_manager_state ;
 int snprintf (char*,size_t,char*,unsigned int,unsigned int) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void menu_action_setting_disp_set_label_cheat_match(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   unsigned int address = 0;
   unsigned int address_mask = 0;
   unsigned int prev_val = 0;
   unsigned int curr_val = 0 ;
   cheat_manager_match_action(CHEAT_MATCH_ACTION_TYPE_VIEW, cheat_manager_state.match_idx, &address, &address_mask, &prev_val, &curr_val);

   snprintf(s, len, "Prev: %u Curr: %u", prev_val, curr_val);
   *w = 19;
   strlcpy(s2, path, len2);
}
