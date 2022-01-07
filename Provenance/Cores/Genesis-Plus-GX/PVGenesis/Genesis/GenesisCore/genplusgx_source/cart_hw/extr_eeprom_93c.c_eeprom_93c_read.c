
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cs; int data; } ;


 int BIT_CLK ;
 int BIT_CS ;
 int BIT_DATA ;
 TYPE_1__ eeprom_93c ;

unsigned char eeprom_93c_read(void)
{
  return ((eeprom_93c.cs << BIT_CS) | (eeprom_93c.data << BIT_DATA) | (1 << BIT_CLK));
}
