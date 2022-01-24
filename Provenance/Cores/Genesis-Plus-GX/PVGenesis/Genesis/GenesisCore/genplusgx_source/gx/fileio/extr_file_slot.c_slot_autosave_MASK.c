#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int s_auto; } ;
struct TYPE_4__ {int mask; scalar_t__ area; scalar_t__ id; } ;
struct TYPE_5__ {TYPE_1__ cartridge; scalar_t__ bram; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CART_BRAM ; 
 int CHUNKSIZE ; 
 int SILENT ; 
 scalar_t__ SYSTEM_MCD ; 
 scalar_t__* brm_crc ; 
 int /*<<< orphan*/ * brm_filename ; 
 scalar_t__ brm_format ; 
 TYPE_3__ config ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int region_code ; 
 int /*<<< orphan*/  rom_filename ; 
 TYPE_2__ scd ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ system_hw ; 

void FUNC7(int slot, int device)
{
  /* Mega CD backup RAM specific */
  if (!slot && (system_hw == SYSTEM_MCD))
  {
    /* verify that internal backup RAM has been modified */
    if (FUNC0(0, scd.bram, 0x2000) != brm_crc[0])
    {
      /* check if it is correctly formatted before saving */
      if (!FUNC4(scd.bram + 0x2000 - 0x20, brm_format + 0x20, 0x20))
      {
        FILE *fp = FUNC2(brm_filename[((region_code ^ 0x40) >> 6) - 1], "wb");
        if (fp != NULL)
        {
          FUNC3(scd.bram, 0x2000, 1, fp);
          FUNC1(fp);

          /* update CRC */
          brm_crc[0] = FUNC0(0, scd.bram, 0x2000);
        }
      }
    }

    /* verify that cartridge backup RAM has been modified */
    if (scd.cartridge.id && (FUNC0(0, scd.cartridge.area, scd.cartridge.mask + 1) != brm_crc[1]))
    {
      /* check if it is correctly formatted before saving */
      if (!FUNC4(scd.cartridge.area + scd.cartridge.mask + 1 - 0x20, brm_format + 0x20, 0x20))
      {
        FILE *fp = FUNC2(CART_BRAM, "wb");
        if (fp != NULL)
        {
          int filesize = scd.cartridge.mask + 1;
          int done = 0;
        
          /* Write to file (2k blocks) */
          while (filesize > CHUNKSIZE)
          {
            FUNC3(scd.cartridge.area + done, CHUNKSIZE, 1, fp);
            done += CHUNKSIZE;
            filesize -= CHUNKSIZE;
          }

          /* Write remaining bytes */
          if (filesize)
          {
            FUNC3(scd.cartridge.area + done, filesize, 1, fp);
          }

          /* Close file */
          FUNC1(fp);

          /* update CRC */
          brm_crc[1] = FUNC0(0, scd.cartridge.area, scd.cartridge.mask + 1);
        }
      }
    }
  }

  /* configurable SRAM & State auto-saving */
  if ((slot && !(config.s_auto & 2)) || (!slot && !(config.s_auto & 1)))
  {
    return;
  }

  if (FUNC6(rom_filename))
  {
    SILENT = 1;
    FUNC5(slot, device);
    SILENT = 0;
  }
}