
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MemorySize; int MemoryBlocksNum; } ;
typedef TYPE_1__ MEMORY_STATUS ;


 int GetMemoryStatus (TYPE_1__*) ;
 int Print (char*,int ,int ) ;

void PrintMemoryStatus()
{
 MEMORY_STATUS s;
 GetMemoryStatus(&s);
 Print("MEMORY STATUS:\n"
  " NUM_OF_MEMORY_BLOCKS: %u\n"
  " SIZE_OF_TOTAL_MEMORY: %u bytes\n",
  s.MemoryBlocksNum, s.MemorySize);
}
