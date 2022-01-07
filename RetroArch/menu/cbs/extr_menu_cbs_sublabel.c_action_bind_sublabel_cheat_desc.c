
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int file_list_t ;
struct TYPE_4__ {TYPE_1__* cheats; } ;
struct TYPE_3__ {scalar_t__ handler; } ;


 scalar_t__ CHEAT_HANDLER_TYPE_EMU ;
 unsigned int MENU_SETTINGS_CHEAT_BEGIN ;
 TYPE_2__ cheat_manager_state ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int action_bind_sublabel_cheat_desc(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   unsigned offset = (type - MENU_SETTINGS_CHEAT_BEGIN);

   if (cheat_manager_state.cheats)
   {
      if (cheat_manager_state.cheats[offset].handler == CHEAT_HANDLER_TYPE_EMU)
         strlcpy(s, "Emulator-Handled", len);
      else
         strlcpy(s, "RetroArch-Handled", len);
   }

   return 0;
}
