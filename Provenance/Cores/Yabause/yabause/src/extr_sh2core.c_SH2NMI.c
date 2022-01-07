
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ICR; } ;
struct TYPE_6__ {TYPE_1__ onchip; } ;
typedef TYPE_2__ SH2_struct ;


 int SH2SendInterrupt (TYPE_2__*,int,int) ;

void SH2NMI(SH2_struct *context)
{
   context->onchip.ICR |= 0x8000;
   SH2SendInterrupt(context, 0xB, 0x10);
}
