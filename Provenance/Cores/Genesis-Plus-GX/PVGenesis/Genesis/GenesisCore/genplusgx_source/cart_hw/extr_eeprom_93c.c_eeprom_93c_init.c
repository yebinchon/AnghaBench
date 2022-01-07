
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int T_EEPROM_93C ;
struct TYPE_5__ {int data; int state; } ;
struct TYPE_4__ {int custom; } ;


 int WAIT_START ;
 TYPE_2__ eeprom_93c ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_1__ sram ;

void eeprom_93c_init()
{

  memset(&eeprom_93c, 0, sizeof(T_EEPROM_93C));
  eeprom_93c.data = 1;
  eeprom_93c.state = WAIT_START;
  sram.custom = 3;
}
