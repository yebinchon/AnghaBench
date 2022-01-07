
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {char* pc; } ;
struct TYPE_7__ {int pending; TYPE_1__* regs; } ;
struct TYPE_6__ {int h; int l; } ;
struct TYPE_5__ {TYPE_2__ byte; } ;


 int M68K_INT_ACK_AUTOVECTOR ;
 int error (char*,int,char*) ;
 TYPE_4__ s68k ;
 int s68k_update_irq (int) ;
 TYPE_3__ scd ;

int scd_68k_irq_ack(int level)
{
  {

    scd.pending &= ~(1 << level);


    if (level == 2)
    {

      scd.regs[0x00].byte.h &= ~0x01;
    }


    s68k_update_irq((scd.pending & scd.regs[0x32>>1].byte.l) >> 1);
  }

  return M68K_INT_ACK_AUTOVECTOR;
}
