
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UWORD ;
typedef int UBYTE ;


 int * MEMORY_mem ;

void PBI_BB_D6PutByte(UWORD addr, UBYTE byte)
{
 MEMORY_mem[addr]=byte;
}
