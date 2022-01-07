
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CARTRIDGE_Remove_Second () ;
 int CARTRIDGE_main ;
 int RemoveCart (int *) ;
 int * active_cart ;

void CARTRIDGE_Remove(void)
{
 active_cart = &CARTRIDGE_main;
 CARTRIDGE_Remove_Second();
 RemoveCart(&CARTRIDGE_main);
}
