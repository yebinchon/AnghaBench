
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UWORD ;
typedef int UBYTE ;


 int * MEMORY_mem ;
 int mio_ram_enabled ;

void PBI_MIO_D6PutByte(UWORD addr, UBYTE byte)
{
 if (!mio_ram_enabled) return;
 MEMORY_mem[addr]=byte;
}
