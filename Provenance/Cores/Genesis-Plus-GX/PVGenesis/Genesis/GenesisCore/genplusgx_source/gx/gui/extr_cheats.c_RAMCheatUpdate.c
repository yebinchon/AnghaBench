
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int data; int address; } ;


 int* cheatIndexes ;
 TYPE_1__* cheatlist ;
 int maxRAMcheats ;
 int* work_ram ;

void RAMCheatUpdate(void)
{
  int index, cnt = maxRAMcheats;

  while (cnt)
  {

    index = cheatIndexes[--cnt];


    if (cheatlist[index].data & 0xFF00)
    {

      *(u16 *)(work_ram + (cheatlist[index].address & 0xFFFE)) = cheatlist[index].data;
    }
    else
    {

      work_ram[cheatlist[index].address & 0xFFFF] = cheatlist[index].data;
    }
  }
}
