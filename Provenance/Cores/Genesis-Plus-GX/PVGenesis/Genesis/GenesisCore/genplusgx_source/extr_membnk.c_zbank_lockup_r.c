
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* d; } ;
struct TYPE_6__ {int cycles; TYPE_1__ pc; } ;
struct TYPE_5__ {int force_dtack; } ;


 TYPE_3__ Z80 ;
 TYPE_2__ config ;
 int error (char*,unsigned int,char*) ;
 scalar_t__ zstate ;

unsigned int zbank_lockup_r(unsigned int address)
{



  if (!config.force_dtack)
  {
    Z80.cycles = 0xFFFFFFFF;
    zstate = 0;
  }
  return 0xFF;
}
