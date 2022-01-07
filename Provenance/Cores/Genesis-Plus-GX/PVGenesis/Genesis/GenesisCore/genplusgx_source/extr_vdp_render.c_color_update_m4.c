
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAKE_PIXEL (int,int,int) ;

 int SYSTEM_GGMS ;
 int SYSTEM_MD ;

 unsigned int* pixel ;
 unsigned int* pixel_lut_m4 ;
 int* reg ;
 int system_hw ;
 unsigned int* tms_crom ;
 unsigned int* tms_palette ;

void color_update_m4(int index, unsigned int data)
{
  switch (system_hw)
  {
    case 129:
    {

      int r = (data >> 0) & 0x0F;
      int g = (data >> 4) & 0x0F;
      int b = (data >> 8) & 0x0F;


      data = MAKE_PIXEL(r,g,b);
      break;
    }

    case 128:
    {

      if (index & 0x0F)
      {

        data = tms_palette[index & 0x0F];
      }
      else
      {

        data = tms_palette[reg[7] & 0x0F];
      }
      break;
    }

    default:
    {

      if (!(reg[0] & 0x04))
      {
        if (system_hw & SYSTEM_MD)
        {

          data = 0x00;
        }
        else if (system_hw != SYSTEM_GGMS)
        {

          if (index & 0x0F)
          {

            data = tms_crom[index & 0x0F];
          }
          else
          {

            data = tms_crom[reg[7] & 0x0F];
          }
        }
      }


      data = pixel_lut_m4[data & 0x3F];
      break;
    }
  }



  if (reg[0] & 0x04)
  {

    pixel[0x00 | index] = data;
    pixel[0x20 | index] = data;
    pixel[0x80 | index] = data;
    pixel[0xA0 | index] = data;
  }
  else
  {

    if ((index == 0x40) || (index == (0x10 | (reg[7] & 0x0F))))
    {

      pixel[0x40] = data;


      pixel[0x10] = data;
      pixel[0x30] = data;
      pixel[0x90] = data;
      pixel[0xB0] = data;
    }

    if (index & 0x0F)
    {

      pixel[0x00 | index] = data;
      pixel[0x20 | index] = data;
      pixel[0x80 | index] = data;
      pixel[0xA0 | index] = data;
    }
  }
}
