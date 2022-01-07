
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; scalar_t__ area; scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ cartridge; scalar_t__ bram; } ;
typedef int FILE ;


 int CART_BRAM ;
 int CD_BRAM_EU ;
 int CD_BRAM_JP ;
 int CD_BRAM_US ;
 int CHUNKSIZE ;



 scalar_t__* brm_crc ;
 scalar_t__ brm_format ;
 scalar_t__ crc32 (int ,scalar_t__,int) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fwrite (scalar_t__,int,int,int *) ;
 int memcmp (scalar_t__,scalar_t__,int) ;
 int region_code ;
 TYPE_2__ scd ;

__attribute__((used)) static void bram_save(void)
{
    FILE *fp;


    if (crc32(0, scd.bram, 0x2000) != brm_crc[0])
    {

      if (!memcmp(scd.bram + 0x2000 - 0x20, brm_format + 0x20, 0x20))
      {
        switch (region_code)
 {
  case 129:
   fp = fopen(CD_BRAM_JP, "wb");
   break;
  case 130:
   fp = fopen(CD_BRAM_EU, "wb");
   break;
  case 128:
   fp = fopen(CD_BRAM_US, "wb");
   break;
  default:
          return;
 }
        if (fp != ((void*)0))
        {
          fwrite(scd.bram, 0x2000, 1, fp);
          fclose(fp);


          brm_crc[0] = crc32(0, scd.bram, 0x2000);
        }
      }
    }


    if (scd.cartridge.id && (crc32(0, scd.cartridge.area, scd.cartridge.mask + 1) != brm_crc[1]))
    {

      if (!memcmp(scd.cartridge.area + scd.cartridge.mask + 1 - 0x20, brm_format + 0x20, 0x20))
      {
        fp = fopen(CART_BRAM, "wb");
        if (fp != ((void*)0))
        {
          int filesize = scd.cartridge.mask + 1;
          int done = 0;


          while (filesize > CHUNKSIZE)
          {
            fwrite(scd.cartridge.area + done, CHUNKSIZE, 1, fp);
            done += CHUNKSIZE;
            filesize -= CHUNKSIZE;
          }


          if (filesize)
          {
            fwrite(scd.cartridge.area + done, filesize, 1, fp);
          }


          fclose(fp);


          brm_crc[1] = crc32(0, scd.cartridge.area, scd.cartridge.mask + 1);
        }
      }
    }
}
