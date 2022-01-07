
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* w_16 ) (unsigned int,unsigned int) ;} ;


 TYPE_1__ rw_funcs ;
 int stub1 (unsigned int,unsigned int) ;
 int stub2 (unsigned int,unsigned int) ;

void m68k_write_memory_32(unsigned int address, unsigned int value)
{
   rw_funcs.w_16(address, value >> 16 );
   rw_funcs.w_16(address + 2, value & 0xffff);
}
