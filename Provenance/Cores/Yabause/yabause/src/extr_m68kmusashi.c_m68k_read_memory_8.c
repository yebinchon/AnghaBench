
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* r_8 ) (unsigned int) ;} ;


 TYPE_1__ rw_funcs ;
 unsigned int stub1 (unsigned int) ;

unsigned int m68k_read_memory_8(unsigned int address)
{
   return rw_funcs.r_8(address);
}
