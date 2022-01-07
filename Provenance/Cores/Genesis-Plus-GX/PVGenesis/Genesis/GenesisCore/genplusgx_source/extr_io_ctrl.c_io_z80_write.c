
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* data_w ) (unsigned int,int) ;} ;


 unsigned int MCYCLES_PER_LINE ;
 int REGION_USA ;
 int* hctab ;
 int hvc_latch ;
 int* io_reg ;
 TYPE_1__* port ;
 int region_code ;
 int sms_cart_switch (unsigned int) ;
 int stub1 (unsigned int,int) ;
 int stub2 (unsigned int,int) ;

void io_z80_write(unsigned int offset, unsigned int data, unsigned int cycles)
{
  if (offset)
  {

    if (region_code & REGION_USA)
    {
      port[0].data_w((data << 1) & 0x60, (~io_reg[0x0F] << 5) & 0x60);
      port[1].data_w((data >> 1) & 0x60, (~io_reg[0x0F] << 3) & 0x60);



      if ((!(io_reg[0x0F] & 0x80) && (data & 0x80)) ||
          (!(io_reg[0x0F] & 0x20) && (data & 0x20)))
      {

        hvc_latch = hctab[cycles % MCYCLES_PER_LINE] | 0x10000;
     }


      io_reg[0x0F] = data;
    }
    else
    {

      io_reg[0x0F] = (data | 0x05) & 0x5F;


      io_reg[0x0D] = ((data & 0x01) << 4) | ((data & 0x04) << 3);
    }
  }
  else
  {

    io_reg[0x0E] = data;


    sms_cart_switch(~data);
  }
}
