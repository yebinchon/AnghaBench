
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_core_t {int dummy; } ;


 int RARCH_CTL_CORE_OPTIONS_DEINIT ;
 int camera_driver_active ;
 int core_set_shared_context ;
 int dylib_close (int *) ;
 int * lib_handle ;
 int location_driver_active ;
 int memset (struct retro_core_t*,int ,int) ;
 int performance_counters_clear () ;
 int rarch_ctl (int ,int *) ;
 int retroarch_frame_time_free () ;
 int retroarch_system_info_free () ;

__attribute__((used)) static void uninit_libretro_symbols(struct retro_core_t *current_core)
{






   memset(current_core, 0, sizeof(struct retro_core_t));

   core_set_shared_context = 0;

   rarch_ctl(RARCH_CTL_CORE_OPTIONS_DEINIT, ((void*)0));
   retroarch_system_info_free();
   retroarch_frame_time_free();
   camera_driver_active = 0;
   location_driver_active = 0;


   performance_counters_clear();
}
