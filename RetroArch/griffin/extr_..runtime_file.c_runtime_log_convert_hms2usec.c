
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_time_t ;



void runtime_log_convert_hms2usec(unsigned hours,
      unsigned minutes, unsigned seconds, retro_time_t *usec)
{
   *usec = ((retro_time_t)hours * 60 * 60 * 1000000) +
           ((retro_time_t)minutes * 60 * 1000000) +
           ((retro_time_t)seconds * 1000000);
}
