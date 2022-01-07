
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int MappedMemoryReadByte (int) ;

__attribute__((used)) static int CalcSaveSize(u32 tableaddr, int blocksize)
{
   int numblocks=0;


   for(;;)
   {
       u16 block;
       block = (MappedMemoryReadByte(tableaddr) << 8) | MappedMemoryReadByte(tableaddr + 2);
       if (block == 0)
         break;
       tableaddr += 4;
       if (((tableaddr-1) & ((blocksize << 1) - 1)) == 0)
          tableaddr += 8;
       numblocks++;
   }

   return numblocks;
}
