
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int loading_cheat_size; } ;


 TYPE_1__ cheat_manager_state ;
 scalar_t__ errno ;
 scalar_t__ string_is_equal (char*,char*) ;
 scalar_t__ strtoul (char*,int *,int ) ;

__attribute__((used)) static void cheat_manager_load_cb_first_pass(char *key, char *value)
{
   errno = 0;

   if (string_is_equal(key, "cheats"))
   {
      cheat_manager_state.loading_cheat_size = (unsigned)strtoul(value, ((void*)0), 0);

      if (errno != 0)
         cheat_manager_state.loading_cheat_size = 0;
   }
}
