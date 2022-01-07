
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* rd0 ) () ;int (* rr0 ) () ;} ;


 TYPE_1__* gPESF ;
 int stub1 () ;
 int stub2 () ;
 scalar_t__ uart_initted ;

int
uart_getc(void)
{
 if (uart_initted) {
  if (!gPESF->rr0())
   return -1;
  return gPESF->rd0();
 }
 return -1;
}
