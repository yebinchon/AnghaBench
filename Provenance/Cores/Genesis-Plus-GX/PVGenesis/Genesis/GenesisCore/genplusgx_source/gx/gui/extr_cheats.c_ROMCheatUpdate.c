
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__* prev; scalar_t__ old; int address; scalar_t__ data; } ;


 int MAX_CHEATS ;
 int* cheatIndexes ;
 TYPE_1__* cheatlist ;
 int maxROMcheats ;
 scalar_t__** z80_readmap ;

void ROMCheatUpdate(void)
{
  int index, cnt = maxROMcheats;
  u8 *ptr;

  while (cnt)
  {

    index = cheatIndexes[MAX_CHEATS - cnt];


    if (cheatlist[index].prev != ((void*)0))
    {

      *cheatlist[index].prev = cheatlist[index].old;


      cheatlist[index].prev = ((void*)0);
    }


    ptr = &z80_readmap[(cheatlist[index].address) >> 10][cheatlist[index].address & 0x03FF];


    if (((u8)cheatlist[index].old) == *ptr)
    {

      *ptr = cheatlist[index].data;


      cheatlist[index].prev = ptr;
    }


    cnt--;
  }
}
