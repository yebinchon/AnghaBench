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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int address; int size; struct TYPE_3__* next; } ;
typedef  TYPE_1__ s_mem_area ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int ELF_DATA_ADDR ; 
 int ELF_DATA_SIZE ; 
 TYPE_1__* MEM_AREA_TABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int RPX_MAX_CODE_SIZE ; 
 int RPX_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(u8 *address, u32 bytes, u32 args_size)
{
   args_size += 0x7;
   args_size &= ~0x7;
   if (args_size > 0x10000)
      args_size = 0x10000;

   FUNC5(args_size);

   RPX_MAX_SIZE = 0x40000000;
   RPX_MAX_CODE_SIZE = 0x03000000;

   /* check if we load an RPX or an ELF */
   if (*(u16 *)&address[7] != 0xCAFE)
   {
      /* assume ELF */
      FUNC6("loading ELF file \n");

      ELF_DATA_ADDR = (u32)FUNC3() + args_size;
      if (ELF_DATA_ADDR >= 0x01000000)
         return -1;
   }
   else
   {
      /* RPX */
      FUNC6("loading RPX file \n");

      ELF_DATA_ADDR = MEM_AREA_TABLE->address;
   }

   /*! if we load an ELF file */
   if (ELF_DATA_ADDR < 0x01000000)
   {

      if ((ELF_DATA_ADDR + bytes) > 0x01000000)
         return -1;

      FUNC4((void *)ELF_DATA_ADDR, address, bytes);
      ELF_DATA_SIZE = bytes;
   }
   else
   {
      FUNC0(address, bytes);

      u32 done = 0;
      u32 addressPhysical = (u32)FUNC1(address);

      s_mem_area *mem_map = MEM_AREA_TABLE;
      u32 mapPosition = 0;

      while ((done < bytes) && mem_map)
      {
         if (mapPosition >= mem_map->size)
         {
            mem_map = mem_map->next;

            if (!mem_map)
               return -1;

            mapPosition = 0;
         }

         u32 blockSize = bytes - done;

         if ((mapPosition + blockSize) > mem_map->size)
            blockSize = mem_map->size - mapPosition;

         FUNC2(mem_map->address + mapPosition, (addressPhysical + done), blockSize);

         mapPosition += blockSize;
         done += blockSize;
      }

      ELF_DATA_SIZE = done;
   }
   return bytes;
}