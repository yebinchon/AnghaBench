
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* cycles; int pc; } ;


 int CPU_INT_LEVEL ;
 int FLAG_INT_MASK ;
 int error (char*,int ,char*,int,int ,int ) ;
 unsigned int* irq_level ;
 TYPE_1__ s68k ;
 int v_counter ;

void s68k_update_irq(unsigned int mask)
{

  mask = irq_level[mask];


  CPU_INT_LEVEL = mask << 8;




}
