
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
typedef scalar_t__ s8 ;


 int MappedMemoryReadByte (int) ;
 int free (int*) ;
 scalar_t__ malloc (int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static u16 *GetFreeBlocks(u32 addr, u32 blocksize, u32 numblocks, u32 size)
{
   u8 *blocktbl;
   u16 *freetbl;
   u32 tableaddr;
   u32 i;
   u32 blockcount=0;


   if ((blocktbl = (u8 *)malloc(sizeof(u8) * (size / blocksize))) == ((void*)0))
      return ((void*)0);

   memset(blocktbl, 0, (size / blocksize));

   for (i = ((2 * blocksize) << 1); i < (size << 1); i += (blocksize << 1))
   {

      if (((s8)MappedMemoryReadByte(addr + i + 1)) < 0)
      {
         tableaddr = addr+i+0x45;
         blocktbl[i / (blocksize << 1)] = 1;


         for(;;)
         {
            u16 block;
            block = (MappedMemoryReadByte(tableaddr) << 8) | MappedMemoryReadByte(tableaddr + 2);
            if (block == 0)
               break;
            tableaddr += 4;
            if (((tableaddr-1) & ((blocksize << 1) - 1)) == 0)
               tableaddr += 8;

            blocktbl[block] = 1;
         }
      }
   }

   if ((freetbl = (u16 *)malloc(sizeof(u16) * numblocks)) == ((void*)0))
   {
      free(blocktbl);
      return ((void*)0);
   }


   for (i = 2; i < (size / blocksize); i++)
   {
      if (blocktbl[i] == 0)
      {
         freetbl[blockcount] = (u16)i;
         blockcount++;

         if (blockcount >= numblocks)
            break;
      }
   }


   free(blocktbl);

   return freetbl;
}
