
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UWORD ;
typedef int UBYTE ;


 int AF80_D6PutByte (size_t,int ) ;
 scalar_t__ AF80_enabled ;
 int * MEMORY_mem ;
 int PBI_BB_D6PutByte (size_t,int ) ;
 scalar_t__ PBI_BB_enabled ;
 scalar_t__ PBI_D6D7ram ;
 int PBI_MIO_D6PutByte (size_t,int ) ;
 scalar_t__ PBI_MIO_enabled ;

void PBI_D6PutByte(UWORD addr, UBYTE byte)
{
 if (PBI_D6D7ram) MEMORY_mem[addr]=byte;
}
