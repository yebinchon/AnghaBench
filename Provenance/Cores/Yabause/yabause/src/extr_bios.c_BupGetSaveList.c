
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* filename; int* comment; int language; int datasize; scalar_t__ blocksize; scalar_t__ week; scalar_t__ minute; scalar_t__ hour; scalar_t__ day; scalar_t__ month; scalar_t__ year; } ;
typedef TYPE_1__ saveinfo_struct ;
typedef scalar_t__ s8 ;


 scalar_t__ CalcSaveSize (int,int) ;
 scalar_t__ CheckHeader (int) ;
 int GetDeviceStats (int,int*,int*,int*) ;
 int MappedMemoryReadByte (int) ;
 scalar_t__ malloc (int) ;

saveinfo_struct *BupGetSaveList(u32 device, int *numsaves)
{
   u32 ret;
   u32 size;
   u32 addr;
   u32 blocksize;
   saveinfo_struct *save;
   int savecount=0;
   u32 i, j;
   u32 workaddr;

   ret = GetDeviceStats(device, &size, &addr, &blocksize);


   if (ret == 1 || CheckHeader(device) != 0)
   {
      *numsaves = 0;
      return ((void*)0);
   }

   for (i = ((2 * blocksize) << 1); i < (size << 1); i += (blocksize << 1))
   {

      if (((s8)MappedMemoryReadByte(addr + i + 1)) < 0)
         savecount++;
   }

   if ((save = (saveinfo_struct *)malloc(savecount * sizeof(saveinfo_struct))) == ((void*)0))
   {
      *numsaves = 0;
      return ((void*)0);
   }

   *numsaves = savecount;

   savecount = 0;

   for (i = ((2 * blocksize) << 1); i < (size << 1); i += (blocksize << 1))
   {

      if (((s8)MappedMemoryReadByte(addr + i + 1)) < 0)
      {
         workaddr = addr + i;


         for (j = 0; j < 11; j++)
            save[savecount].filename[j] = MappedMemoryReadByte(workaddr+0x9+(j * 2));
         save[savecount].filename[11] = '\0';


         for (j = 0; j < 10; j++)
            save[savecount].comment[j] = MappedMemoryReadByte(workaddr+0x21+(j * 2));
         save[savecount].comment[10] = '\0';


         save[savecount].language = MappedMemoryReadByte(workaddr+0x1F);


         save[savecount].year = 0;
         save[savecount].month = 0;
         save[savecount].day = 0;
         save[savecount].hour = 0;
         save[savecount].minute = 0;
         save[savecount].week = 0;


         save[savecount].datasize = (MappedMemoryReadByte(workaddr+0x3D) << 24) |
                                    (MappedMemoryReadByte(workaddr+0x3F) << 16) |
                                    (MappedMemoryReadByte(workaddr+0x41) << 8) |
                                    MappedMemoryReadByte(workaddr+0x43);


         save[savecount].blocksize = CalcSaveSize(workaddr+0x45, blocksize) + 1;
         savecount++;
      }
   }

   return save;
}
