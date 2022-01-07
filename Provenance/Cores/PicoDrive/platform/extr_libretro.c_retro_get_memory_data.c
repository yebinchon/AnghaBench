
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* bram; } ;
struct TYPE_3__ {void* data; } ;


 int PAHW_MCD ;
 int PicoAHW ;
 TYPE_2__* Pico_mcd ;
 unsigned int RETRO_MEMORY_SAVE_RAM ;
 TYPE_1__ SRam ;

void *retro_get_memory_data(unsigned id)
{
 if (id != RETRO_MEMORY_SAVE_RAM)
  return ((void*)0);

 if (PicoAHW & PAHW_MCD)
  return Pico_mcd->bram;
 else
  return SRam.data;
}
