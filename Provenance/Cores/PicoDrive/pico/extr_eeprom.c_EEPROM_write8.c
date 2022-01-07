
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* eeprom_wb; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int EEPROM_write16 (unsigned char) ;
 TYPE_2__ Pico ;

void EEPROM_write8(unsigned int a, unsigned int d)
{
  unsigned char *wb = Pico.m.eeprom_wb;
  wb[a & 1] = d;
  EEPROM_write16((wb[0] << 8) | wb[1]);
}
