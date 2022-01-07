
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int region_detect; int vdp_mode; int master_clock; } ;
struct TYPE_3__ {int checksum; int realchecksum; int product; scalar_t__* country; } ;


 int MCLOCK_NTSC ;
 int MCLOCK_PAL ;
 int REGION_EUROPE ;
 int REGION_JAPAN_NTSC ;
 int REGION_JAPAN_PAL ;
 int REGION_USA ;
 int SYSTEM_MCD ;
 int SYSTEM_MD ;
 TYPE_2__ config ;
 int memcmp (scalar_t__*,char*,int) ;
 int region_code ;
 int rom_region ;
 TYPE_1__ rominfo ;
 int sms_cart_region_detect () ;
 int * strstr (int ,char*) ;
 int system_clock ;
 int system_hw ;
 char toupper (int) ;
 int vdp_pal ;

void get_region(char *romheader)
{

  if (romheader)
  {

    if (system_hw == SYSTEM_MCD)
    {

      switch (romheader[0x20b])
      {
        case 0x7a:
          region_code = REGION_USA;
          break;

        case 0x64:
          region_code = REGION_EUROPE;
          break;

        default:
          region_code = REGION_JAPAN_NTSC;
          break;
      }
    }


    else if (system_hw & SYSTEM_MD)
    {





      int country = 0;


      if (!memcmp(rominfo.country, "eur", 3)) country |= 8;
      else if (!memcmp(rominfo.country, "EUR", 3)) country |= 8;
      else if (!memcmp(rominfo.country, "jap", 3)) country |= 1;
      else if (!memcmp(rominfo.country, "JAP", 3)) country |= 1;
      else if (!memcmp(rominfo.country, "usa", 3)) country |= 4;
      else if (!memcmp(rominfo.country, "USA", 3)) country |= 4;
      else
      {
        int i;
        char c;


        for(i = 0; i < 4; i++)
        {
          c = toupper((int)rominfo.country[i]);

          if (c == 'U') country |= 4;
          else if (c == 'J') country |= 1;
          else if (c == 'E') country |= 8;
          else if (c == 'K') country |= 1;
          else if (c < 16) country |= c;
          else if ((c >= '0') && (c <= '9')) country |= c - '0';
          else if ((c >= 'A') && (c <= 'F')) country |= c - 'A' + 10;
        }
      }


      if (country & 4) region_code = REGION_USA;
      else if (country & 1) region_code = REGION_JAPAN_NTSC;
      else if (country & 8) region_code = REGION_EUROPE;
      else if (country & 2) region_code = REGION_JAPAN_PAL;
      else region_code = REGION_USA;


      if (((strstr(rominfo.product,"T-45033") != ((void*)0)) && (rominfo.checksum == 0x0F81)) ||
           (strstr(rominfo.product,"T-69046-50") != ((void*)0)) ||
           (strstr(rominfo.product,"T-120106-00") != ((void*)0)) ||
           (strstr(rominfo.product,"T-70096 -00") != ((void*)0)))
      {

        region_code = REGION_EUROPE;
      }
      else if ((rominfo.realchecksum == 0x532e) && (strstr(rominfo.product,"1011-00") != ((void*)0)))
      {

        region_code = REGION_JAPAN_NTSC;
      }
    }


    else
    {
      region_code = sms_cart_region_detect();
    }


    rom_region = region_code;
  }
  else
  {

    region_code = rom_region;
  }


  if (config.region_detect == 1) region_code = REGION_USA;
  else if (config.region_detect == 2) region_code = REGION_EUROPE;
  else if (config.region_detect == 3) region_code = REGION_JAPAN_NTSC;
  else if (config.region_detect == 4) region_code = REGION_JAPAN_PAL;


  vdp_pal = (region_code >> 6) & 0x01;


  system_clock = vdp_pal ? MCLOCK_PAL : MCLOCK_NTSC;


  if (config.vdp_mode == 1) vdp_pal = 0;
  else if (config.vdp_mode == 2) vdp_pal = 1;


  if (config.master_clock == 1) system_clock = MCLOCK_NTSC;
  else if (config.master_clock == 2) system_clock = MCLOCK_PAL;
}
