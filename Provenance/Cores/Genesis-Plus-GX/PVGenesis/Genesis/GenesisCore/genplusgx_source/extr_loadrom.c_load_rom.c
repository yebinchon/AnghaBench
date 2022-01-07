
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint8 ;
typedef int uint32 ;
struct TYPE_16__ {int romsize; int* rom; } ;
struct TYPE_15__ {scalar_t__ ram; } ;
struct TYPE_14__ {scalar_t__ loaded; } ;
struct TYPE_13__ {int system; } ;
struct TYPE_12__ {int* system; int x_offset; int y_offset; } ;
struct TYPE_11__ {int international; int product; int domestic; int ROMType; int consoletype; } ;
struct TYPE_9__ {int boot; } ;
struct TYPE_10__ {int* bootrom; TYPE_1__ cartridge; } ;


 int SYSTEM_GG ;
 int SYSTEM_GGMS ;
 int SYSTEM_JUSTIFIER ;
 int SYSTEM_MCD ;
 int SYSTEM_MD ;
 void* SYSTEM_MD_GAMEPAD ;
 void* SYSTEM_MENACER ;
 int SYSTEM_PBC ;
 int SYSTEM_PICO ;
 int SYSTEM_SG ;
 int SYSTEM_SMS ;
 int SYSTEM_SMS2 ;
 int areplay_shutdown () ;
 TYPE_8__ cart ;
 TYPE_7__ cdc ;
 TYPE_6__ cdd ;
 int cdd_load (char*,char*) ;
 int cdd_unload () ;
 TYPE_5__ config ;
 int deinterleave_block (int*) ;
 int get_region (char*) ;
 int getrominfo (char*) ;
 int ggenie_shutdown () ;
 TYPE_4__ input ;
 int load_archive (char*,int*,int,char*) ;
 scalar_t__ load_bios () ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (int*,int*,int) ;
 int* old_system ;
 int region_code ;
 TYPE_3__ rominfo ;
 int romtype ;
 TYPE_2__ scd ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int * strstr (int ,char*) ;
 int system_bios ;
 int system_hw ;

int load_rom(char *filename)
{
  int i, size;


  ggenie_shutdown();
  areplay_shutdown();


  if (cart.romsize > 0x800000)
  {

    cdd.loaded = 0;
  }


  size = cdd_load(filename, (char *)(cart.rom));
  if (size < 0)
  {

    return 0;
  }

  if (size > 0)
  {

    system_hw = SYSTEM_MCD;
  }
  else
  {

    char extension[4];
    size = load_archive(filename, cart.rom, sizeof(cart.rom), extension);
    if (!size)
    {

      system_bios &= ~(0x10 | SYSTEM_SMS | SYSTEM_GG);
      return 0;
    }


    if (size > 0x800000)
    {

      system_bios &= ~0x10;
    }
    else if (size > 0x400000)
    {

      system_bios &= ~(SYSTEM_SMS | SYSTEM_GG);
    }


    *(uint32 *)(extension) &= 0xdfdfdfdf;


    if (!memcmp("SMS", &extension[0], 3))
    {

      system_hw = SYSTEM_SMS2;
    }
    else if (!memcmp("GG", &extension[1], 2))
    {

      system_hw = SYSTEM_GG;
    }
    else if (!memcmp("SG", &extension[1], 2))
    {

      system_hw = SYSTEM_SG;
    }
    else
    {

      system_hw = SYSTEM_MD;


      if (!memcmp("MDX", &extension[0], 3))
      {
        for (i = 4; i < size - 1; i++)
        {
          cart.rom[i-4] = cart.rom[i] ^ 0x40;
        }
        size = size - 5;
      }


      if (!memcmp((char *)(cart.rom + 0x100),"ESAGM GE ARDVI E", 16) ||
          !memcmp((char *)(cart.rom + 0x100),"ESAGG NESESI", 12))
      {
        for(i = 0; i < size; i += 2)
        {
          uint8 temp = cart.rom[i];
          cart.rom[i] = cart.rom[i+1];
          cart.rom[i+1] = temp;
        }
      }
    }


    if (memcmp((char *)(cart.rom + 0x100), "SEGA", 4) && ((size / 512) & 1) && !(size % 512))
    {

      size -= 512;
      memcpy (cart.rom, cart.rom + 512, size);


      if (system_hw == SYSTEM_MD)
      {
        for (i = 0; i < (size / 0x4000); i++)
        {
          deinterleave_block (cart.rom + (i * 0x4000));
        }
      }
    }
  }


  cart.romsize = size;


  getrominfo((char *)(cart.rom));


  get_region((char *)(cart.rom));


  if (system_hw == SYSTEM_MCD)
  {

    if (!load_bios())
    {

      cdd_unload();


      return (0);
    }


    scd.cartridge.boot = 0x00;
  }
  romtype = system_hw;


  if (strstr(rominfo.consoletype, "SEGA PICO") != ((void*)0))
  {

    system_hw = SYSTEM_PICO;
  }


  else if (strstr(rominfo.ROMType, "BR") != ((void*)0))
  {

    system_hw = SYSTEM_MCD;


    scd.cartridge.boot = 0x00;


    memcpy(scd.bootrom, cart.rom, sizeof(scd.bootrom));


    system_bios = system_bios | 0x10;


    system_bios = (system_bios & 0xf0) | (region_code >> 4);
  }


  else if ((strstr(rominfo.domestic,"FLUX") != ((void*)0)) ||
           (strstr(rominfo.domestic,"WONDER LIBRARY") != ((void*)0)) ||
           (strstr(rominfo.product,"T-5740") != ((void*)0)))
  {

    if (config.system == 0x00)
    {

      system_hw = SYSTEM_MCD;


      if (load_bios())
      {

        scd.cartridge.boot = 0x40;


        strncpy(&filename[strlen(filename) - 4], ".iso", 4);
        cdd_load(filename, (char *)cdc.ram);
      }
      else
      {

        system_hw = SYSTEM_MD;
      }
    }
  }


  if (config.system == SYSTEM_MD)
  {
    if (!(system_hw & SYSTEM_MD))
    {

      system_hw = SYSTEM_PBC;
    }
  }
  else if (config.system == SYSTEM_GG)
  {
    if (system_hw != SYSTEM_GG)
    {

      system_hw = SYSTEM_GGMS;
    }
  }
  else if (config.system)
  {
    system_hw = config.system;
  }


  if (old_system[0] != -1)
  {
    input.system[0] = old_system[0];
  }
  if (old_system[1] != -1)
  {
    input.system[1] = old_system[1];
  }


  input.x_offset = (input.system[1] == SYSTEM_MENACER) ? 64 : 0;
  input.y_offset = 0;


  if (strstr(rominfo.international,"MENACER") != ((void*)0))
  {

    if (old_system[0] == -1)
    {
      old_system[0] = input.system[0];
    }
    if (old_system[1] == -1)
    {
      old_system[1] = input.system[1];
    }


    input.system[0] = SYSTEM_MD_GAMEPAD;
    input.system[1] = SYSTEM_MENACER;
    input.x_offset = 82;
    input.y_offset = 0;
  }
  else if (strstr(rominfo.international,"T2 ; THE ARCADE GAME") != ((void*)0))
  {

    if (old_system[0] == -1)
    {
      old_system[0] = input.system[0];
    }
    if (old_system[1] == -1)
    {
      old_system[1] = input.system[1];
    }


    input.system[0] = SYSTEM_MD_GAMEPAD;
    input.system[1] = SYSTEM_MENACER;
    input.x_offset = 133;
    input.y_offset = -8;
  }
  else if (strstr(rominfo.international,"BODY COUNT") != ((void*)0))
  {

    if (old_system[0] == -1)
    {
      old_system[0] = input.system[0];
    }
    if (old_system[1] == -1)
    {
      old_system[1] = input.system[1];
    }


    input.system[0] = SYSTEM_MD_GAMEPAD;
    input.system[1] = SYSTEM_MENACER;
    input.x_offset = 68;
    input.y_offset = -24;
  }
  else if (strstr(rominfo.international,"CORPSE KILLER") != ((void*)0))
  {

    if (old_system[0] == -1)
    {
      old_system[0] = input.system[0];
    }
    if (old_system[1] == -1)
    {
      old_system[1] = input.system[1];
    }


    input.system[0] = SYSTEM_MD_GAMEPAD;
    input.system[1] = SYSTEM_MENACER;
    input.x_offset = 64;
    input.y_offset = -8;
  }
  else if (strstr(rominfo.international,"CRIME PATROL") != ((void*)0))
  {

    if (old_system[0] == -1)
    {
      old_system[0] = input.system[0];
    }
    if (old_system[1] == -1)
    {
      old_system[1] = input.system[1];
    }


    input.system[0] = SYSTEM_MD_GAMEPAD;
    input.system[1] = SYSTEM_MENACER;
    input.x_offset = 61;
    input.y_offset = 0;
  }
  else if (strstr(rominfo.international,"MAD DOG II THE LOST GOLD") != ((void*)0))
  {

    if (old_system[0] == -1)
    {
      old_system[0] = input.system[0];
    }
    if (old_system[1] == -1)
    {
      old_system[1] = input.system[1];
    }


    input.system[0] = SYSTEM_MD_GAMEPAD;
    input.system[1] = SYSTEM_MENACER;
    input.x_offset = 70;
    input.y_offset = 18;
  }
  else if (strstr(rominfo.international,"MAD DOG MCCREE") != ((void*)0))
  {

    if (old_system[0] == -1)
    {
      old_system[0] = input.system[0];
    }
    if (old_system[1] == -1)
    {
      old_system[1] = input.system[1];
    }


    input.system[0] = SYSTEM_MD_GAMEPAD;
    input.system[1] = SYSTEM_MENACER;
    input.x_offset = 49;
    input.y_offset = 0;
  }
  else if (strstr(rominfo.international,"WHO SHOT JOHNNY ROCK?") != ((void*)0))
  {

    if (old_system[0] == -1)
    {
      old_system[0] = input.system[0];
    }
    if (old_system[1] == -1)
    {
      old_system[1] = input.system[1];
    }


    input.system[0] = SYSTEM_MD_GAMEPAD;
    input.system[1] = SYSTEM_MENACER;
    input.x_offset = 60;
    input.y_offset = 30;
  }
  else if ((strstr(rominfo.international,"LETHAL ENFORCERS") != ((void*)0)) ||
           (strstr(rominfo.international,"SNATCHER") != ((void*)0)))
  {

    if (old_system[0] == -1)
    {
      old_system[0] = input.system[0];
    }
    if (old_system[1] == -1)
    {
      old_system[1] = input.system[1];
    }


    input.system[0] = SYSTEM_MD_GAMEPAD;
    input.system[1] = SYSTEM_JUSTIFIER;
    input.x_offset = (strstr(rominfo.international,"GUN FIGHTERS") != ((void*)0)) ? 24 : 0;
    input.y_offset = 0;
  }

  return(1);
}
