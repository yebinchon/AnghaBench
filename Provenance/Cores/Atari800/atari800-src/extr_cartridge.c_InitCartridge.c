
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
typedef TYPE_1__ CARTRIDGE_image_t ;


 int Atari800_InitialiseMachine () ;
 scalar_t__ Atari800_MACHINE_5200 ;
 scalar_t__ Atari800_MACHINE_XLXE ;
 int Atari800_SetMachineType (scalar_t__) ;
 scalar_t__ Atari800_machine_type ;
 TYPE_1__ CARTRIDGE_main ;
 int CartIsFor5200 (int ) ;
 int MEMORY_ram_size ;
 int MapActiveCart () ;
 int PreprocessCart (TYPE_1__*) ;
 int ResetCartState (TYPE_1__*) ;
 TYPE_1__* active_cart ;

__attribute__((used)) static void InitCartridge(CARTRIDGE_image_t *cart)
{
 PreprocessCart(cart);
 ResetCartState(cart);
 if (cart == &CARTRIDGE_main) {

  int for5200 = CartIsFor5200(CARTRIDGE_main.type);
  if (for5200 && Atari800_machine_type != Atari800_MACHINE_5200) {
   Atari800_SetMachineType(Atari800_MACHINE_5200);
   MEMORY_ram_size = 16;
   Atari800_InitialiseMachine();
  }
  else if (!for5200 && Atari800_machine_type == Atari800_MACHINE_5200) {
   Atari800_SetMachineType(Atari800_MACHINE_XLXE);
   MEMORY_ram_size = 64;
   Atari800_InitialiseMachine();
  }
 }
 if (cart == active_cart)
  MapActiveCart();
}
