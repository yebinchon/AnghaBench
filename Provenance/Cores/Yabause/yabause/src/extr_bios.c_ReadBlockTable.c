
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int CalcSaveSize (int,int) ;
 int MappedMemoryReadByte (int) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static u16 *ReadBlockTable(u32 addr, u32 *tableaddr, int block, int blocksize, int *numblocks, int *blocksread)
{
   u16 *blocktbl;
   int i=0;

   tableaddr[0] = addr + (block * blocksize * 2) + 0x45;
   blocksread[0]=0;


   numblocks[0] = CalcSaveSize(tableaddr[0], blocksize);


   if ((blocktbl = (u16 *)malloc(sizeof(u16) * numblocks[0])) == ((void*)0))
      return ((void*)0);


   for(i = 0; i < numblocks[0]; i++)
   {
       u16 block;
       block = (MappedMemoryReadByte(tableaddr[0]) << 8) | MappedMemoryReadByte(tableaddr[0] + 2);
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
