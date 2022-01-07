
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int POKEYSND_Update_ptr (int ,int ,int ,int ) ;
 int Update_synchronized_sound () ;

void POKEYSND_Update(UWORD addr, UBYTE val, UBYTE chip, UBYTE gain)
{



 POKEYSND_Update_ptr(addr, val, chip, gain);
}
