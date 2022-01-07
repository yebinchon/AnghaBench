
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int retro_time_t ;
struct TYPE_3__ {int quick_tap_time; } ;
typedef TYPE_1__ android_input_t ;


 int cpu_features_get_time_usec () ;

__attribute__((used)) static int android_check_quick_tap(android_input_t *android)
{



   retro_time_t now = cpu_features_get_time_usec();
   if (android->quick_tap_time && (now/1000 - android->quick_tap_time/1000000) >= 200)
   {
      android->quick_tap_time = 0;
      return 1;
   }

   return 0;
}
