
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UWORD ;
typedef int UBYTE ;


 int Log_print (char*,size_t) ;
 int * MEMORY_mem ;

__attribute__((used)) static UBYTE MosaicGetByte(UWORD addr, int no_side_effects)
{



 return MEMORY_mem[addr];
}
