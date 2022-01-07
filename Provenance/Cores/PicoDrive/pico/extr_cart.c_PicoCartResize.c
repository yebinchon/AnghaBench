
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* rom; } ;


 TYPE_1__ Pico ;
 void* plat_mremap (void*,int,int) ;
 int rom_alloc_size ;

int PicoCartResize(int newsize)
{
  void *tmp = plat_mremap(Pico.rom, rom_alloc_size, newsize);
  if (tmp == ((void*)0))
    return -1;

  Pico.rom = tmp;
  rom_alloc_size = newsize;
  return 0;
}
