
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int MEMORY_dGetByte (int ) ;

int AF80_D5GetByte(UWORD addr, int no_side_effects)
{
 int result = MEMORY_dGetByte(addr);
 return result;
}
