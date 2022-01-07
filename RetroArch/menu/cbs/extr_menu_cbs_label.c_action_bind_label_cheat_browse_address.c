
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int file_list_t ;
struct TYPE_2__ {int browse_address; } ;


 int MENU_ENUM_LABEL_VALUE_CHEAT_BROWSE_MEMORY ;
 TYPE_1__ cheat_manager_state ;
 char* msg_hash_to_str (int ) ;
 int snprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static int action_bind_label_cheat_browse_address(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   snprintf(s, len, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_CHEAT_BROWSE_MEMORY), cheat_manager_state.browse_address);
   return 0;
}
