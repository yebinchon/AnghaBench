
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int throttle_window_size ;


 scalar_t__ PE_get_default (char*,int*,int) ;
 scalar_t__ PE_parse_boot_argn (char*,int*,int) ;
 size_t THROTTLE_LEVEL_TIER1 ;
 size_t THROTTLE_LEVEL_TIER2 ;
 size_t THROTTLE_LEVEL_TIER3 ;
 int* throttle_windows_msecs ;

__attribute__((used)) static void
throttle_init_throttle_window(void)
{
 int throttle_window_size;
 if (PE_get_default("kern.io_throttle_window_tier1", &throttle_window_size, sizeof(throttle_window_size)))
  throttle_windows_msecs[THROTTLE_LEVEL_TIER1] = throttle_window_size;

 if (PE_get_default("kern.io_throttle_window_tier2", &throttle_window_size, sizeof(throttle_window_size)))
  throttle_windows_msecs[THROTTLE_LEVEL_TIER2] = throttle_window_size;

 if (PE_get_default("kern.io_throttle_window_tier3", &throttle_window_size, sizeof(throttle_window_size)))
  throttle_windows_msecs[THROTTLE_LEVEL_TIER3] = throttle_window_size;


 if (PE_parse_boot_argn("io_throttle_window_tier1", &throttle_window_size, sizeof(throttle_window_size)))
  throttle_windows_msecs[THROTTLE_LEVEL_TIER1] = throttle_window_size;

 if (PE_parse_boot_argn("io_throttle_window_tier2", &throttle_window_size, sizeof(throttle_window_size)))
  throttle_windows_msecs[THROTTLE_LEVEL_TIER2] = throttle_window_size;

 if (PE_parse_boot_argn("io_throttle_window_tier3", &throttle_window_size, sizeof(throttle_window_size)))
  throttle_windows_msecs[THROTTLE_LEVEL_TIER3] = throttle_window_size;
}
