
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AutoReboot () ;
 int CARTRIDGE_Remove () ;

void CARTRIDGE_RemoveAutoReboot(void)
{
 CARTRIDGE_Remove();
 AutoReboot();
}
