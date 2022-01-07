
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cheevos_leaderboards_enable; scalar_t__ cheevos_hardcore_mode_enable; scalar_t__ cheevos_test_unofficial; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;


 TYPE_2__* config_get_ptr () ;
 int rcheevos_hardcore_paused ;
 int rcheevos_test_cheevo_set (int) ;
 int rcheevos_test_leaderboards () ;

void rcheevos_test(void)
{
   settings_t *settings = config_get_ptr();

   rcheevos_test_cheevo_set(1);

   if (settings)
   {
      if (settings->bools.cheevos_test_unofficial)
         rcheevos_test_cheevo_set(0);

      if (settings->bools.cheevos_hardcore_mode_enable &&
          settings->bools.cheevos_leaderboards_enable &&
          !rcheevos_hardcore_paused)
         rcheevos_test_leaderboards();
   }
}
