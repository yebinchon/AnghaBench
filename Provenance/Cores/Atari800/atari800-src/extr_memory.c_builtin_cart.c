
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ Atari800_builtin_basic ;
 scalar_t__ Atari800_builtin_game ;
 int const* MEMORY_basic ;
 int MEMORY_ram_size ;
 int const* MEMORY_xegame ;

__attribute__((used)) static UBYTE const * builtin_cart(UBYTE portb)
{



 if (Atari800_builtin_basic
     && (portb & 0x02) == 0
     && ((portb & 0x10) != 0 || (MEMORY_ram_size != 576 && MEMORY_ram_size != 1088)))
  return MEMORY_basic;




 if (Atari800_builtin_game
     && (portb & 0x40) == 0
     && ((portb & 0x10) != 0 || MEMORY_ram_size < 320))
  return MEMORY_xegame;
 return ((void*)0);
}
