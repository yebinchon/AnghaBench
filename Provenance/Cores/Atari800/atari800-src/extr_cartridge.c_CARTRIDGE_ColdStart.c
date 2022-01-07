
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CARTRIDGE_main ;
 int CARTRIDGE_piggyback ;
 int MapActiveCart () ;
 int ResetCartState (int *) ;
 int * active_cart ;

void CARTRIDGE_ColdStart(void) {
 active_cart = &CARTRIDGE_main;
 ResetCartState(&CARTRIDGE_main);
 ResetCartState(&CARTRIDGE_piggyback);
 MapActiveCart();
}
