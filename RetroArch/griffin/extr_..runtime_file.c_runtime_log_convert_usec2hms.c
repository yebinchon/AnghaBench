
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_time_t ;



void runtime_log_convert_usec2hms(retro_time_t usec,
      unsigned *hours, unsigned *minutes, unsigned *seconds)
{
   *seconds = (unsigned)(usec / 1000000);
   *minutes = *seconds / 60;
   *hours = *minutes / 60;

   *seconds -= *minutes * 60;
   *minutes -= *hours * 60;
}
