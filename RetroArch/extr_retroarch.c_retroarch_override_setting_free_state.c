
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_override_setting { ____Placeholder_rarch_override_setting } rarch_override_setting ;


 unsigned int MAX_USERS ;
 unsigned int RARCH_OVERRIDE_SETTING_LAST ;
 unsigned int RARCH_OVERRIDE_SETTING_LIBRETRO_DEVICE ;
 int retroarch_override_setting_unset (int,unsigned int*) ;

__attribute__((used)) static void retroarch_override_setting_free_state(void)
{
   unsigned i;
   for (i = 0; i < RARCH_OVERRIDE_SETTING_LAST; i++)
   {
      if (i == RARCH_OVERRIDE_SETTING_LIBRETRO_DEVICE)
      {
         unsigned j;
         for (j = 0; j < MAX_USERS; j++)
            retroarch_override_setting_unset(
                  (enum rarch_override_setting)(i), &j);
      }
      else
         retroarch_override_setting_unset(
               (enum rarch_override_setting)(i), ((void*)0));
   }
}
