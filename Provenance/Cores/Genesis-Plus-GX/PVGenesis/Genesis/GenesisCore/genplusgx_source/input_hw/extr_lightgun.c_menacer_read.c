
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* pad; } ;


 TYPE_1__ input ;

unsigned char menacer_read(void)
{



  unsigned data = input.pad[4] >> 4;
  return ((data & 0x09) | ((data >> 1) & 0x02) | ((data << 1) & 0x04) | 0x40);
}
