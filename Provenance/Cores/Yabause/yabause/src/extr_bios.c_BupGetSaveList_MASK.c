#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int* filename; int* comment; int language; int datasize; scalar_t__ blocksize; scalar_t__ week; scalar_t__ minute; scalar_t__ hour; scalar_t__ day; scalar_t__ month; scalar_t__ year; } ;
typedef  TYPE_1__ saveinfo_struct ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,int*,int*,int*) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 

saveinfo_struct *FUNC5(u32 device, int *numsaves)
{
   u32 ret;
   u32 size;
   u32 addr;
   u32 blocksize;
   saveinfo_struct *save;
   int savecount=0;
   u32 i, j;
   u32 workaddr;

   ret = FUNC2(device, &size, &addr, &blocksize);

   // Make sure there's a proper header, and return if there's any other errors
   if (ret == 1 || FUNC1(device) != 0)
   {
      *numsaves = 0;
      return NULL;
   }

   for (i = ((2 * blocksize) << 1); i < (size << 1); i += (blocksize << 1))
   {
      // Find a block with the start of a save
      if (((s8)FUNC3(addr + i + 1)) < 0)
         savecount++;
   }

   if ((save = (saveinfo_struct *)FUNC4(savecount * sizeof(saveinfo_struct))) == NULL)
   {
      *numsaves = 0;
      return NULL;
   }

   *numsaves = savecount;

   savecount = 0;

   for (i = ((2 * blocksize) << 1); i < (size << 1); i += (blocksize << 1))
   {
      // Find a block with the start of a save
      if (((s8)FUNC3(addr + i + 1)) < 0)
      {
         workaddr = addr + i;

         // Copy over filename
         for (j = 0; j < 11; j++)
            save[savecount].filename[j] = FUNC3(workaddr+0x9+(j * 2));
         save[savecount].filename[11] = '\0';

         // Copy over comment
         for (j = 0; j < 10; j++)
            save[savecount].comment[j] = FUNC3(workaddr+0x21+(j * 2));
         save[savecount].comment[10] = '\0';

         // Copy over language
         save[savecount].language = FUNC3(workaddr+0x1F);

         // Copy over Date(fix me)
         save[savecount].year = 0;
         save[savecount].month = 0;
         save[savecount].day = 0;
         save[savecount].hour = 0;
         save[savecount].minute = 0;
         save[savecount].week = 0;

         // Copy over data size
         save[savecount].datasize = (FUNC3(workaddr+0x3D) << 24) |
                                    (FUNC3(workaddr+0x3F) << 16) |
                                    (FUNC3(workaddr+0x41) << 8) |
                                    FUNC3(workaddr+0x43);

         // Calculate size in blocks
         save[savecount].blocksize = FUNC0(workaddr+0x45, blocksize) + 1;
         savecount++;
      }
   }

   return save;
}