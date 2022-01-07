
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int romsize; scalar_t__ rom; } ;
struct TYPE_3__ {int address; int * prev; int old; scalar_t__ enable; } ;


 int SYSTEM_MD ;
 int SYSTEM_PBC ;
 TYPE_2__ cart ;
 TYPE_1__* cheatlist ;
 int maxcheats ;
 int system_hw ;

__attribute__((used)) static void clear_cheats(void)
{
  int i = maxcheats;


  while (i > 0)
  {
    if (cheatlist[i-1].enable)
    {
      if (cheatlist[i-1].address < cart.romsize)
      {
        if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
        {

          *(u16 *)(cart.rom + (cheatlist[i-1].address & 0xFFFFFE)) = cheatlist[i-1].old;
        }
        else
        {

          if (cheatlist[i-1].prev != ((void*)0))
          {

            *cheatlist[i-1].prev = cheatlist[i-1].old;


            cheatlist[i-1].prev = ((void*)0);
          }
        }
      }
    }

    i--;
  }
}
