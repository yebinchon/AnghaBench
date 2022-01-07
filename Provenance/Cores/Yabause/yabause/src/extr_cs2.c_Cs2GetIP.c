
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_7__ {int numblocks; int* blocknum; TYPE_5__** block; int size; } ;
typedef TYPE_1__ partition_struct ;
struct TYPE_10__ {scalar_t__ outconcddevnum; scalar_t__ filter; scalar_t__ outconcddev; } ;
struct TYPE_9__ {scalar_t__ size; scalar_t__ data; } ;
struct TYPE_8__ {char* system; char* company; int* itemnum; char* version; int* cdinfo; int* region; int* peripheral; char* gamename; char ipsize; char msh2stack; char ssh2stack; char firstprogaddr; char firstprogsize; int date; } ;


 TYPE_6__* Cs2Area ;
 int Cs2FreeBlock (TYPE_5__*) ;
 TYPE_1__* Cs2ReadUnFilteredSector (int) ;
 int Cs2SortBlocks (TYPE_1__*) ;
 TYPE_2__* cdip ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int sprintf (int ,char*,char,char,char,char,char,char,char,char) ;
 int sscanf (char*,char*,int*) ;

u8 Cs2GetIP(int autoregion) {
   partition_struct * gripartition;
   u8 ret = 0;

   Cs2Area->outconcddev = Cs2Area->filter + 0;
   Cs2Area->outconcddevnum = 0;


   if ((gripartition = Cs2ReadUnFilteredSector(150)) != ((void*)0))
   {
      char *buf=(char*)gripartition->block[gripartition->numblocks - 1]->data;


      if (memcmp(buf, "SEGA SEGASATURN", 15) == 0)
      {
         memcpy(cdip->system, buf, 16);
         cdip->system[16]='\0';
         memcpy(cdip->company, buf+0x10, 16);
         cdip->company[16]='\0';
         sscanf(buf+0x20, "%s", cdip->itemnum);
         memcpy(cdip->version, buf+0x2A, 6);
         cdip->version[6]='\0';
         sprintf(cdip->date, "%c%c/%c%c/%c%c%c%c", buf[0x34], buf[0x35], buf[0x36], buf[0x37], buf[0x30], buf[0x31], buf[0x32], buf[0x33]);
         sscanf(buf+0x38, "%s", cdip->cdinfo);
         sscanf(buf+0x40, "%s", cdip->region);
         sscanf(buf+0x50, "%s", cdip->peripheral);
         memcpy(cdip->gamename, buf+0x60, 112);
         cdip->gamename[112]='\0';







         cdip->ipsize = (buf[0xE0] << 24) | (buf[0xE1] << 16) |
                        (buf[0xE2] << 8) | buf[0xE3];
         cdip->msh2stack = (buf[0xE8] << 24) | (buf[0xE9] << 16) |
                           (buf[0xEA] << 8) | buf[0xEB];
         cdip->ssh2stack = (buf[0xEC] << 24) | (buf[0xED] << 16) |
                           (buf[0xEE] << 8) | buf[0xEF];
         cdip->firstprogaddr = (buf[0xF0] << 24) | (buf[0xF1] << 16) |
                               (buf[0xF2] << 8) | buf[0xF3];
         cdip->firstprogsize = (buf[0xF4] << 24) | (buf[0xF5] << 16) |
                               (buf[0xF6] << 8) | buf[0xF7];

         if (cdip->msh2stack == 0 )
         {
            cdip->msh2stack = 0x6002000;
         }


         if (cdip->msh2stack & 0x80000000)
         {
            cdip->msh2stack = 0x06000000 + (cdip->msh2stack & 0x0000FFFF );
         }

         if (cdip->ssh2stack == 0 )
         {
            cdip->ssh2stack = 0x6001000;
         }

         if (cdip->ssh2stack & 0x80000000)
         {
            cdip->ssh2stack = 0x06000000 + (cdip->ssh2stack & 0x0000FFFF);
         }


         if (autoregion)
         {

            switch (cdip->region[0])
            {
               case 'J':
                         ret = 1;
                         break;
               case 'T':
                         ret = 2;
                         break;
               case 'U':
                         ret = 4;
                         break;
               case 'B':
                         ret = 5;
                         break;
               case 'K':
                         ret = 6;
                         break;
               case 'A':
                         ret = 0xA;
                         break;
               case 'E':
                         ret = 0xC;
                         break;
               case 'L':
                         ret = 0xD;
                         break;
               default: break;
            }
         }
      }


      gripartition->size -= gripartition->block[gripartition->numblocks - 1]->size;
      Cs2FreeBlock(gripartition->block[gripartition->numblocks - 1]);
      gripartition->blocknum[gripartition->numblocks - 1] = 0xFF;


      Cs2SortBlocks(gripartition);
      gripartition->numblocks -= 1;
   }

   return ret;
}
