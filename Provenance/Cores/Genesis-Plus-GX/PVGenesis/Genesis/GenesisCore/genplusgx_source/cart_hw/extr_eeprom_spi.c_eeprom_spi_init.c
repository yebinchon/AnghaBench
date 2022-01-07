
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int T_EEPROM_SPI ;
struct TYPE_5__ {int out; int state; } ;
struct TYPE_4__ {int custom; int on; } ;


 int GET_OPCODE ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__ spi_eeprom ;
 TYPE_1__ sram ;

void eeprom_spi_init()
{

  memset(&spi_eeprom, 0, sizeof(T_EEPROM_SPI));
  spi_eeprom.out = 1;
  spi_eeprom.state = GET_OPCODE;


  sram.custom = 2;
  sram.on = 1;
}
