
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_9__ {int numblocks; int* blocknum; TYPE_6__** block; int size; } ;
typedef TYPE_1__ partition_struct ;
typedef int filter_struct ;
struct TYPE_10__ {int lba; int size; int recordsize; } ;
typedef TYPE_2__ dirrec_struct ;
struct TYPE_12__ {int getsectsize; scalar_t__ curdirsect; int curdirfidoffset; int curdirsize; int numfiles; TYPE_2__* fileinfo; int * outconcddev; } ;
struct TYPE_11__ {int size; scalar_t__* data; } ;


 TYPE_8__* Cs2Area ;
 int Cs2CopyDirRecord (scalar_t__*,TYPE_2__*) ;
 int Cs2FreeBlock (TYPE_6__*) ;
 TYPE_1__* Cs2ReadUnFilteredSector (int) ;
 int Cs2SortBlocks (TYPE_1__*) ;
 int MAX_FILES ;
 int memset (TYPE_2__*,int ,int) ;

int Cs2ReadFileSystem(filter_struct * curfilter, u32 fid, int isoffset)
{
   u8 * workbuffer;
   u32 i;
   dirrec_struct dirrec;
   u8 numsectorsleft = 0;
   u32 curdirlba = 0;
   partition_struct * rfspartition;
   u32 blocksectsize = Cs2Area->getsectsize;

   Cs2Area->outconcddev = curfilter;

   if (isoffset)
   {



      if (Cs2Area->curdirsect == 0)
         return -1;

      Cs2Area->curdirfidoffset = fid - 2;
      curdirlba = Cs2Area->curdirsect;
      numsectorsleft = (u8)Cs2Area->curdirsize;
   }
   else
   {


      if (fid == 0xFFFFFF)
      {



         if ((rfspartition = Cs2ReadUnFilteredSector(166)) == ((void*)0))
            return -2;

         blocksectsize = rfspartition->block[rfspartition->numblocks - 1]->size;


         Cs2CopyDirRecord(rfspartition->block[rfspartition->numblocks - 1]->data + 0x9C, &dirrec);


         rfspartition->size -= rfspartition->block[rfspartition->numblocks - 1]->size;
         Cs2FreeBlock(rfspartition->block[rfspartition->numblocks - 1]);
         rfspartition->blocknum[rfspartition->numblocks - 1] = 0xFF;


         Cs2SortBlocks(rfspartition);
         rfspartition->numblocks -= 1;

         curdirlba = Cs2Area->curdirsect = dirrec.lba;
         Cs2Area->curdirsize = (dirrec.size / blocksectsize) - 1;
         numsectorsleft = (u8)Cs2Area->curdirsize;
         Cs2Area->curdirfidoffset = 0;
      }
      else
      {



         if (Cs2Area->curdirsect == 0)
            return -1;

         curdirlba = Cs2Area->curdirsect = Cs2Area->fileinfo[fid - Cs2Area->curdirfidoffset].lba - 150;
         Cs2Area->curdirsize = (Cs2Area->fileinfo[fid - Cs2Area->curdirfidoffset].size / blocksectsize) - 1;
         numsectorsleft = (u8)Cs2Area->curdirsize;
         Cs2Area->curdirfidoffset = 0;
      }
   }


   memset(Cs2Area->fileinfo, 0, sizeof(dirrec_struct) * MAX_FILES);


   if ((rfspartition = Cs2ReadUnFilteredSector(curdirlba+150)) == ((void*)0))
      return -2;

   curdirlba++;
   workbuffer = rfspartition->block[rfspartition->numblocks - 1]->data;


   for (i = 0; i < 2; i++)
   {
      Cs2CopyDirRecord(workbuffer, Cs2Area->fileinfo + i);
      Cs2Area->fileinfo[i].lba += 150;
      workbuffer += Cs2Area->fileinfo[i].recordsize;

      if (workbuffer[0] == 0)
      {
         Cs2Area->numfiles = i;
         break;
      }
   }



   if (isoffset)
   {
      for (i = 2; i < fid; i++)
      {
         Cs2CopyDirRecord(workbuffer, Cs2Area->fileinfo + 2);
         workbuffer += Cs2Area->fileinfo[2].recordsize;

         if (workbuffer[0] == 0)
         {
            if (numsectorsleft > 0)
            {

               rfspartition->size -= rfspartition->block[rfspartition->numblocks - 1]->size;
               Cs2FreeBlock(rfspartition->block[rfspartition->numblocks - 1]);
               rfspartition->blocknum[rfspartition->numblocks - 1] = 0xFF;


               Cs2SortBlocks(rfspartition);
               rfspartition->numblocks -= 1;


               if ((rfspartition = Cs2ReadUnFilteredSector(curdirlba+150)) == ((void*)0))
                  return -2;

               curdirlba++;

               numsectorsleft--;
               workbuffer = rfspartition->block[rfspartition->numblocks - 1]->data;
            }
            else
            {
               break;
            }
         }
      }
   }



   for (i = 2; i < MAX_FILES; i++)
   {
      Cs2CopyDirRecord(workbuffer, Cs2Area->fileinfo + i);
      Cs2Area->fileinfo[i].lba += 150;
      workbuffer += Cs2Area->fileinfo[i].recordsize;

      if (workbuffer[0] == 0)
      {
         if (numsectorsleft > 0)
         {

            rfspartition->size -= rfspartition->block[rfspartition->numblocks - 1]->size;
            Cs2FreeBlock(rfspartition->block[rfspartition->numblocks - 1]);
            rfspartition->blocknum[rfspartition->numblocks - 1] = 0xFF;


            Cs2SortBlocks(rfspartition);
            rfspartition->numblocks -= 1;


            if ((rfspartition = Cs2ReadUnFilteredSector(curdirlba+150)) == ((void*)0))
               return -2;

            curdirlba++;
            numsectorsleft--;
            workbuffer = rfspartition->block[rfspartition->numblocks - 1]->data;
         }
         else
         {
            Cs2Area->numfiles = i;
            break;
         }
      }
   }


   rfspartition->size -= rfspartition->block[rfspartition->numblocks - 1]->size;
   Cs2FreeBlock(rfspartition->block[rfspartition->numblocks - 1]);
   rfspartition->blocknum[rfspartition->numblocks - 1] = 0xFF;


   Cs2SortBlocks(rfspartition);
   rfspartition->numblocks -= 1;
  return 0;
}
