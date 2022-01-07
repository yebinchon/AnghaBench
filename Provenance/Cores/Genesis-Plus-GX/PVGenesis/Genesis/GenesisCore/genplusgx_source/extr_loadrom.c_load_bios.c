
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int romsize; int rom; } ;
struct TYPE_3__ {int * bootrom; } ;


 int CD_BIOS_EU ;
 int CD_BIOS_JP ;
 int CD_BIOS_US ;
 int GG_BIOS ;
 int MS_BIOS_EU ;
 int MS_BIOS_JP ;
 int MS_BIOS_US ;







 TYPE_2__ cart ;
 int load_archive (int ,int *,int,int ) ;
 int region_code ;
 TYPE_1__ scd ;
 int system_bios ;
 int system_hw ;

int load_bios(void)
{
  int size = 0;

  switch (system_hw)
  {
    case 130:
    {

      if (!(system_bios & 0x10) || ((system_bios & 0x0c) != (region_code >> 4)))
      {

        switch (region_code)
        {
          case 133:
            size = load_archive(CD_BIOS_US, scd.bootrom, sizeof(scd.bootrom), 0);
            break;
          case 134:
            size = load_archive(CD_BIOS_EU, scd.bootrom, sizeof(scd.bootrom), 0);
            break;
          default:
            size = load_archive(CD_BIOS_JP, scd.bootrom, sizeof(scd.bootrom), 0);
            break;
        }


        if (size > 0)
        {
          system_bios = system_bios | 0x10;


          system_bios = (system_bios & 0xf0) | (region_code >> 4);
        }

        return size;
      }

      return -1;
    }

    case 132:
    case 131:
    {

      if (!(system_bios & 132))
      {

        system_bios &= ~(129 | 132);


        if (cart.romsize <= 0x400000)
        {

          size = load_archive(GG_BIOS, cart.rom + 0x400000, 0x100000, 0);

          if (size > 0)
          {

            system_bios |= 132;
          }
        }

        return size;
      }

      return -1;
    }

    case 129:
    case 128:
    {

      if (!(system_bios & 129) || ((system_bios & 0x0c) != (region_code >> 4)))
      {

        system_bios &= ~(129 | 132);


        if (cart.romsize <= 0x400000)
        {

          switch (region_code)
          {
            case 133:
              size = load_archive(MS_BIOS_US, cart.rom + 0x400000, 0x400000, 0);
              break;
            case 134:
              size = load_archive(MS_BIOS_EU, cart.rom + 0x400000, 0x400000, 0);
              break;
            default:
              size = load_archive(MS_BIOS_JP, cart.rom + 0x400000, 0x400000, 0);
              break;
          }

          if (size > 0)
          {

            system_bios |= 129;


            system_bios = (system_bios & 0xf0) | (region_code >> 4);
          }
        }

        return size;
      }

      return -1;
    }

    default:
    {
      return 0;
    }
  }
}
