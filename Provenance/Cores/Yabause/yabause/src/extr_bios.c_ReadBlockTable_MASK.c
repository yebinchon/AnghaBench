#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static u16 *FUNC3(u32 addr, u32 *tableaddr, int block, int blocksize, int *numblocks, int *blocksread)
{
   u16 *blocktbl;
   int i=0;

   tableaddr[0] = addr + (block * blocksize * 2) + 0x45;
   blocksread[0]=0;

   // First of all figure out how large of buffer we need
   numblocks[0] = FUNC0(tableaddr[0], blocksize);

   // Allocate buffer
   if ((blocktbl = (u16 *)FUNC2(sizeof(u16) * numblocks[0])) == NULL)
      return NULL;

   // Now read in the table
   for(i = 0; i < numblocks[0]; i++)
   {
       u16 block;
       block = (FUNC1(tableaddr[0]) << 8) | FUNC1(tableaddr[0] + 2);
       tableaddr[0] += 4;

       if (((tableaddr[0]-1) & ((blocksize << 1) - 1)) == 0)
       {
          tableaddr[0] = addr + (blocktbl[blocksread[0]] * blocksize * 2) + 9;
          blocksread[0]++;
       }
       blocktbl[i] = block;
   }

   tableaddr[0] += 4;

   return blocktbl;
}