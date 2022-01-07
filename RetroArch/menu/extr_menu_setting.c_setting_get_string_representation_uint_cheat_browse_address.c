
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int* unsigned_integer; } ;
struct TYPE_7__ {TYPE_1__ target; } ;
struct TYPE_8__ {TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;
struct TYPE_9__ {unsigned int browse_address; int match_idx; } ;


 int CHEAT_MATCH_ACTION_TYPE_BROWSE ;
 int MENU_ENUM_LABEL_CHEAT_SEARCH_EQMINUS_VAL ;
 int cheat_manager_match_action (int ,int ,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 TYPE_5__ cheat_manager_state ;
 char* msg_hash_to_str (int ) ;
 int snprintf (char*,size_t,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void setting_get_string_representation_uint_cheat_browse_address(rarch_setting_t *setting,
      char *s, size_t len)
{
   unsigned int address = cheat_manager_state.browse_address;
   unsigned int address_mask = 0;
   unsigned int prev_val = 0;
   unsigned int curr_val = 0;

   if (setting)
      snprintf(s, len, msg_hash_to_str(MENU_ENUM_LABEL_CHEAT_SEARCH_EQMINUS_VAL),
            *setting->value.target.unsigned_integer, *setting->value.target.unsigned_integer);

   cheat_manager_match_action(CHEAT_MATCH_ACTION_TYPE_BROWSE, cheat_manager_state.match_idx, &address, &address_mask, &prev_val, &curr_val);

   snprintf(s, len, "Prev: %u Curr: %u", prev_val, curr_val);

}
