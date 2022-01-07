
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int D (int ) ;
 int* MEMORY_mem ;
 scalar_t__ PBI_D6D7ram ;
 int printf (char*,int,int) ;

void PBI_D7PutByte(UWORD addr, UBYTE byte)
{
 D(printf("PBI_D7PutByte:%4x <- %2x\n",addr,byte));
 if (PBI_D6D7ram) MEMORY_mem[addr]=byte;
}
