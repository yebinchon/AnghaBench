
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ frame_count; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {size_t size; int* data; } ;


 int PAHW_MCD ;
 TYPE_3__ Pico ;
 int PicoAHW ;
 unsigned int RETRO_MEMORY_SAVE_RAM ;
 TYPE_2__ SRam ;

size_t retro_get_memory_size(unsigned id)
{
 unsigned int i;
 int sum;

 if (id != RETRO_MEMORY_SAVE_RAM)
  return 0;

 if (PicoAHW & PAHW_MCD)

  return 0x2000;

 if (Pico.m.frame_count == 0)
  return SRam.size;



    for (i = 0, sum = 0; i < SRam.size; i++) {
  sum |= SRam.data[i];
    }

 return (sum != 0) ? SRam.size : 0;
}
