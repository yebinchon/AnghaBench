
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_core_t {int dummy; } ;
typedef enum rarch_core_type { ____Placeholder_rarch_core_type } rarch_core_type ;


 int init_libretro_symbols_custom (int,struct retro_core_t*,int *,int *) ;
 int last_core_type ;

__attribute__((used)) static bool init_libretro_symbols(enum rarch_core_type type,
      struct retro_core_t *current_core)
{

   if (!init_libretro_symbols_custom(type, current_core, ((void*)0), ((void*)0)))
      return 0;






   return 1;
}
