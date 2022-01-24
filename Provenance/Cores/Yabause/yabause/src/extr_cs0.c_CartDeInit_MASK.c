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
struct TYPE_3__ {int carttype; scalar_t__ dram; scalar_t__ bupram; scalar_t__ filename; scalar_t__ rom; } ;

/* Variables and functions */
#define  CART_BACKUPRAM16MBIT 131 
#define  CART_BACKUPRAM32MBIT 130 
#define  CART_BACKUPRAM4MBIT 129 
#define  CART_BACKUPRAM8MBIT 128 
 int CART_PAR ; 
 TYPE_1__* CartridgeArea ; 
 scalar_t__ FUNC0 (scalar_t__,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  YAB_ERR_FILEWRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(void)
{
   if (CartridgeArea)
   {
      if (CartridgeArea->carttype == CART_PAR)
      {
         if (CartridgeArea->rom)
         {
            if (FUNC0(CartridgeArea->rom, 0x40000, 2, CartridgeArea->filename) != 0)
               FUNC3(YAB_ERR_FILEWRITE, (void *)CartridgeArea->filename);
            FUNC2(CartridgeArea->rom);
         }
      }
      else
      {
         if (CartridgeArea->rom)
            FUNC1(CartridgeArea->rom);
      }

      if (CartridgeArea->bupram)
      {
         u32 size=0;

         switch (CartridgeArea->carttype)
         {
            case CART_BACKUPRAM4MBIT: // 4 Mbit Backup Ram
            {
               size = 0x100000;
               break;
            }
            case CART_BACKUPRAM8MBIT: // 8 Mbit Backup Ram
            {
               size = 0x200000;
               break;
            }
            case CART_BACKUPRAM16MBIT: // 16 Mbit Backup Ram
            {
               size = 0x400000;
               break;
            }
            case CART_BACKUPRAM32MBIT: // 32 Mbit Backup Ram
            {
               size = 0x800000;
               break;
            }
         }

         if (size != 0)
         {
            if (FUNC0(CartridgeArea->bupram, size, 1, CartridgeArea->filename) != 0)
               FUNC3(YAB_ERR_FILEWRITE, (void *)CartridgeArea->filename);

            FUNC1(CartridgeArea->bupram);
         }
      }

      if (CartridgeArea->dram)
         FUNC1(CartridgeArea->dram);

      FUNC4(CartridgeArea);
   }
   CartridgeArea = NULL;
}