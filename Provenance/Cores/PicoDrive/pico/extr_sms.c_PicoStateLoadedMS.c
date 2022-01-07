
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * carthw; } ;
struct TYPE_4__ {TYPE_1__ ms; } ;


 TYPE_2__ Pico ;
 int write_bank (int,int ) ;

void PicoStateLoadedMS(void)
{
  write_bank(0xfffe, Pico.ms.carthw[0x0e]);
  write_bank(0xffff, Pico.ms.carthw[0x0f]);
}
