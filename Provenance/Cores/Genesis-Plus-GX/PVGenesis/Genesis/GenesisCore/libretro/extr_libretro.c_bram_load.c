
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; scalar_t__* area; scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ cartridge; scalar_t__* bram; } ;
typedef int FILE ;


 int CART_BRAM ;
 int CD_BRAM_EU ;
 int CD_BRAM_JP ;
 int CD_BRAM_US ;
 int CHUNKSIZE ;



 scalar_t__* brm_crc ;
 int* brm_format ;
 scalar_t__ crc32 (int ,scalar_t__*,int) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (scalar_t__*,int,int,int *) ;
 scalar_t__ memcmp (scalar_t__*,int*,int) ;
 int memcpy (scalar_t__*,int*,int) ;
 int memset (scalar_t__*,int,int) ;
 int region_code ;
 TYPE_2__ scd ;

__attribute__((used)) static void bram_load(void)
{
    FILE *fp;


    switch (region_code)
    {
       case 129:
          fp = fopen(CD_BRAM_JP, "rb");
          break;
       case 130:
          fp = fopen(CD_BRAM_EU, "rb");
          break;
       case 128:
          fp = fopen(CD_BRAM_US, "rb");
          break;
       default:
          return;
    }

    if (fp != ((void*)0))
    {
      fread(scd.bram, 0x2000, 1, fp);
      fclose(fp);


      brm_crc[0] = crc32(0, scd.bram, 0x2000);
    }
    else
    {

      scd.bram[0x1fff] = 0;
    }


    if (memcmp(scd.bram + 0x2000 - 0x20, brm_format + 0x20, 0x20))
    {

      memset(scd.bram, 0x00, 0x2000 - 0x40);


      brm_format[0x10] = brm_format[0x12] = brm_format[0x14] = brm_format[0x16] = 0x00;
      brm_format[0x11] = brm_format[0x13] = brm_format[0x15] = brm_format[0x17] = (sizeof(scd.bram) / 64) - 3;


      memcpy(scd.bram + 0x2000 - 0x40, brm_format, 0x40);


      brm_crc[0] = 0;
    }


    if (scd.cartridge.id)
    {
      fp = fopen(CART_BRAM, "rb");
      if (fp != ((void*)0))
      {
        int filesize = scd.cartridge.mask + 1;
        int done = 0;


        while (filesize > CHUNKSIZE)
        {
          fread(scd.cartridge.area + done, CHUNKSIZE, 1, fp);
          done += CHUNKSIZE;
          filesize -= CHUNKSIZE;
        }


        if (filesize)
        {
          fread(scd.cartridge.area + done, filesize, 1, fp);
        }


        fclose(fp);


        brm_crc[1] = crc32(0, scd.cartridge.area, scd.cartridge.mask + 1);
      }


      if (memcmp(scd.cartridge.area + scd.cartridge.mask + 1 - 0x20, brm_format + 0x20, 0x20))
      {

        memset(scd.cartridge.area, 0x00, scd.cartridge.mask + 1);


        brm_format[0x10] = brm_format[0x12] = brm_format[0x14] = brm_format[0x16] = (((scd.cartridge.mask + 1) / 64) - 3) >> 8;
        brm_format[0x11] = brm_format[0x13] = brm_format[0x15] = brm_format[0x17] = (((scd.cartridge.mask + 1) / 64) - 3) & 0xff;


        memcpy(scd.cartridge.area + scd.cartridge.mask + 1 - 0x40, brm_format, 0x40);
      }
    }
}
