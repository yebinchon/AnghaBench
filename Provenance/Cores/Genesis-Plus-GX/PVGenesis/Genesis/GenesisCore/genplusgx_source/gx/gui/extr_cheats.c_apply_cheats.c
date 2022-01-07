
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {int romsize; scalar_t__ rom; } ;
struct TYPE_3__ {int address; scalar_t__ old; scalar_t__ data; scalar_t__* prev; scalar_t__ enable; } ;


 size_t MAX_CHEATS ;
 int SYSTEM_MD ;
 int SYSTEM_PBC ;
 TYPE_2__ cart ;
 int* cheatIndexes ;
 TYPE_1__* cheatlist ;
 size_t maxRAMcheats ;
 size_t maxROMcheats ;
 int maxcheats ;
 int system_hw ;
 scalar_t__** z80_readmap ;

__attribute__((used)) static void apply_cheats(void)
{
  u8 *ptr;


  maxROMcheats = maxRAMcheats = 0;

  int i;
  for (i = 0; i < maxcheats; i++)
  {
    if (cheatlist[i].enable)
    {
      if (cheatlist[i].address < cart.romsize)
      {
        if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
        {

          cheatlist[i].old = *(u16 *)(cart.rom + (cheatlist[i].address & 0xFFFFFE));
          *(u16 *)(cart.rom + (cheatlist[i].address & 0xFFFFFE)) = cheatlist[i].data;
        }
        else
        {

          maxROMcheats++;
          cheatIndexes[MAX_CHEATS - maxROMcheats] = i;


          ptr = &z80_readmap[(cheatlist[i].address) >> 10][cheatlist[i].address & 0x03FF];


          if (((u8)cheatlist[i].old) == *ptr)
          {

            *ptr = cheatlist[i].data;


            cheatlist[i].prev = ptr;
          }
          else
          {

            cheatlist[i].prev = ((void*)0);
          }
        }
      }
      else if (cheatlist[i].address >= 0xFF0000)
      {

        cheatIndexes[maxRAMcheats++] = i;
      }
    }
  }
}
