
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int s_auto; } ;
struct TYPE_4__ {int mask; scalar_t__ area; scalar_t__ id; } ;
struct TYPE_5__ {TYPE_1__ cartridge; scalar_t__ bram; } ;
typedef int FILE ;


 int CART_BRAM ;
 int CHUNKSIZE ;
 int SILENT ;
 scalar_t__ SYSTEM_MCD ;
 scalar_t__* brm_crc ;
 int * brm_filename ;
 scalar_t__ brm_format ;
 TYPE_3__ config ;
 scalar_t__ crc32 (int ,scalar_t__,int) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fwrite (scalar_t__,int,int,int *) ;
 int memcmp (scalar_t__,scalar_t__,int) ;
 int region_code ;
 int rom_filename ;
 TYPE_2__ scd ;
 int slot_save (int,int) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ system_hw ;

void slot_autosave(int slot, int device)
{

  if (!slot && (system_hw == SYSTEM_MCD))
  {

    if (crc32(0, scd.bram, 0x2000) != brm_crc[0])
    {

      if (!memcmp(scd.bram + 0x2000 - 0x20, brm_format + 0x20, 0x20))
      {
        FILE *fp = fopen(brm_filename[((region_code ^ 0x40) >> 6) - 1], "wb");
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
        FILE *fp = fopen(CART_BRAM, "wb");
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


  if ((slot && !(config.s_auto & 2)) || (!slot && !(config.s_auto & 1)))
  {
    return;
  }

  if (strlen(rom_filename))
  {
    SILENT = 1;
    slot_save(slot, device);
    SILENT = 0;
  }
}
