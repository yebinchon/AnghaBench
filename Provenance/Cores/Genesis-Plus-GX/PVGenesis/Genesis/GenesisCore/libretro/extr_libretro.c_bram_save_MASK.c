#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mask; scalar_t__ area; scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ cartridge; scalar_t__ bram; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CART_BRAM ; 
 int /*<<< orphan*/  CD_BRAM_EU ; 
 int /*<<< orphan*/  CD_BRAM_JP ; 
 int /*<<< orphan*/  CD_BRAM_US ; 
 int CHUNKSIZE ; 
#define  REGION_EUROPE 130 
#define  REGION_JAPAN_NTSC 129 
#define  REGION_USA 128 
 scalar_t__* brm_crc ; 
 scalar_t__ brm_format ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int region_code ; 
 TYPE_2__ scd ; 

__attribute__((used)) static void FUNC5(void)
{
    FILE *fp;

    /* verify that internal backup RAM has been modified */
    if (FUNC0(0, scd.bram, 0x2000) != brm_crc[0])
    {
      /* check if it is correctly formatted before saving */
      if (!FUNC4(scd.bram + 0x2000 - 0x20, brm_format + 0x20, 0x20))
      {
        switch (region_code)
	{
		case REGION_JAPAN_NTSC:
			fp = FUNC2(CD_BRAM_JP, "wb");
			break;
		case REGION_EUROPE:
			fp = FUNC2(CD_BRAM_EU, "wb");
			break;
		case REGION_USA:
			fp = FUNC2(CD_BRAM_US, "wb");
			break;
		default:
		        return;
	}
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
        fp = FUNC2(CART_BRAM, "wb");
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