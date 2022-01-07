
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_13__ {int numblocks; int* blocknum; TYPE_9__** block; scalar_t__ size; } ;
typedef TYPE_1__ partition_struct ;
struct TYPE_14__ {int lba; int size; int recordsize; } ;
typedef TYPE_2__ dirrec_struct ;
struct TYPE_17__ {int* data; } ;
struct TYPE_16__ {int PC; int * R; } ;
struct TYPE_15__ {TYPE_4__ regs; } ;
struct TYPE_12__ {scalar_t__ outconcddevnum; scalar_t__ filter; scalar_t__ outconcddev; } ;


 TYPE_11__* Cs2Area ;
 int Cs2CopyDirRecord (int*,TYPE_2__*) ;
 int Cs2FreeBlock (TYPE_9__*) ;
 int Cs2GetMasterStackAdress () ;
 TYPE_1__* Cs2ReadUnFilteredSector (int) ;
 TYPE_3__* MSH2 ;
 int MappedMemoryWriteByte (int,int) ;
 int SH2GetRegisters (TYPE_3__*,TYPE_4__*) ;
 int SH2SetRegisters (TYPE_3__*,TYPE_4__*) ;
 int SH2WriteNotify (int,int) ;
 int YabauseSpeedySetup () ;
 scalar_t__ memcmp (int*,char*,int) ;

int YabauseQuickLoadGame(void)
{
   partition_struct * lgpartition;
   u8 *buffer;
   u32 addr;
   u32 size;
   u32 blocks;
   unsigned int i, i2;
   dirrec_struct dirrec;

   Cs2Area->outconcddev = Cs2Area->filter + 0;
   Cs2Area->outconcddevnum = 0;


   if ((lgpartition = Cs2ReadUnFilteredSector(150)) == ((void*)0))
      return -1;


   buffer = lgpartition->block[lgpartition->numblocks - 1]->data;

   YabauseSpeedySetup();

   if (memcmp(buffer, "SEGA SEGASATURN", 15) == 0)
   {

      size = (buffer[0xE0] << 24) |
             (buffer[0xE1] << 16) |
             (buffer[0xE2] << 8) |
              buffer[0xE3];
      blocks = size >> 11;
      if ((size % 2048) != 0)
         blocks++;



      addr = (buffer[0xF0] << 24) |
             (buffer[0xF1] << 16) |
             (buffer[0xF2] << 8) |
              buffer[0xF3];


      lgpartition->size = 0;
      Cs2FreeBlock(lgpartition->block[lgpartition->numblocks - 1]);
      lgpartition->blocknum[lgpartition->numblocks - 1] = 0xFF;
      lgpartition->numblocks = 0;


      for (i = 0; i < blocks; i++)
      {
         if ((lgpartition = Cs2ReadUnFilteredSector(150+i)) == ((void*)0))
            return -1;

         buffer = lgpartition->block[lgpartition->numblocks - 1]->data;

         if (size >= 2048)
         {
            for (i2 = 0; i2 < 2048; i2++)
               MappedMemoryWriteByte(0x06002000 + (i * 0x800) + i2, buffer[i2]);
         }
         else
         {
            for (i2 = 0; i2 < size; i2++)
               MappedMemoryWriteByte(0x06002000 + (i * 0x800) + i2, buffer[i2]);
         }

         size -= 2048;


         lgpartition->size = 0;
         Cs2FreeBlock(lgpartition->block[lgpartition->numblocks - 1]);
         lgpartition->blocknum[lgpartition->numblocks - 1] = 0xFF;
         lgpartition->numblocks = 0;
      }

      SH2WriteNotify(0x6002000, blocks<<11);





      if ((lgpartition = Cs2ReadUnFilteredSector(166)) == ((void*)0))
         return -1;




      Cs2CopyDirRecord(lgpartition->block[lgpartition->numblocks - 1]->data + 0x9C, &dirrec);


      lgpartition->size = 0;
      Cs2FreeBlock(lgpartition->block[lgpartition->numblocks - 1]);
      lgpartition->blocknum[lgpartition->numblocks - 1] = 0xFF;
      lgpartition->numblocks = 0;


      if ((lgpartition = Cs2ReadUnFilteredSector(dirrec.lba+150)) == ((void*)0))
         return -1;

      buffer = lgpartition->block[lgpartition->numblocks - 1]->data;


      for (i = 0; i < 3; i++)
      {
         Cs2CopyDirRecord(buffer, &dirrec);
         buffer += dirrec.recordsize;
      }

      size = dirrec.size;
      blocks = size >> 11;
      if ((dirrec.size % 2048) != 0)
         blocks++;


      lgpartition->size = 0;
      Cs2FreeBlock(lgpartition->block[lgpartition->numblocks - 1]);
      lgpartition->blocknum[lgpartition->numblocks - 1] = 0xFF;
      lgpartition->numblocks = 0;


      for (i = 0; i < blocks; i++)
      {
         if ((lgpartition = Cs2ReadUnFilteredSector(150+dirrec.lba+i)) == ((void*)0))
            return -1;

         buffer = lgpartition->block[lgpartition->numblocks - 1]->data;

         if (size >= 2048)
         {
            for (i2 = 0; i2 < 2048; i2++)
               MappedMemoryWriteByte(addr + (i * 0x800) + i2, buffer[i2]);
         }
         else
         {
            for (i2 = 0; i2 < size; i2++)
               MappedMemoryWriteByte(addr + (i * 0x800) + i2, buffer[i2]);
         }

         size -= 2048;


         lgpartition->size = 0;
         Cs2FreeBlock(lgpartition->block[lgpartition->numblocks - 1]);
         lgpartition->blocknum[lgpartition->numblocks - 1] = 0xFF;
         lgpartition->numblocks = 0;
      }

      SH2WriteNotify(addr, blocks<<11);


      SH2GetRegisters(MSH2, &MSH2->regs);
      MSH2->regs.PC = 0x06002E00;
      MSH2->regs.R[15] = Cs2GetMasterStackAdress();
      SH2SetRegisters(MSH2, &MSH2->regs);
   }
   else
   {



      lgpartition->size = 0;
      Cs2FreeBlock(lgpartition->block[lgpartition->numblocks - 1]);
      lgpartition->blocknum[lgpartition->numblocks - 1] = 0xFF;
      lgpartition->numblocks = 0;

      return -1;
   }

   return 0;
}
